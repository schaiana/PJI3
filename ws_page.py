# -*- coding: utf-8 -*-
#Interpreta o arquivo como utf-8 (aceita acentos)

import sys
from flask import Flask, url_for, jsonify, make_response, abort, request, redirect, session, render_template
from sqlalchemy import create_engine
from sqlalchemy.sql import text
#from flask_cors import CORS
#from flask_httpauth import HTTPBasicAuth

class ws_page():

	def __init__(self):
		eng = create_engine("mysql+pymysql://root:luisa@localhost/pji3")
		try:		
			self.con = eng.connect()
			print('Conectou no banco de dados')
		except:
			print('Não foi possível conectar no banco de dados')
			exit()
		
		self.app = Flask(__name__)
		self.app.env = 'development'
		self.app.add_url_rule('/', view_func=self.main)
		self.app.add_url_rule('/get_sensores', view_func=self.get_sensores, methods=['GET'])
		self.app.add_url_rule('/get_data_sensor', view_func=self.get_data_sensor, methods=['GET'])
		self.app.run(debug=True)

	def main(self):
		return render_template('index.html')


	def get_sensores(self): #get

		sensores = dict()
		sensores['sensores'] = []  #array
		select_sensores = self._get_sensores()
		
		for row in select_sensores:
			dados = dict()
			dados['sensor_id'] = row[0]
			dados['tipo'] = row[1]
			dados['nodo_id'] = row[2]

			sensores['sensores'].append(dados)

		print(sensores)

		#return jsonify(sensores)
		return render_template('sensores.html', title='Listar Sensores', sensores=sensores)

	def get_data_sensor(self):
		idSensor = request.args.get('idSensor')

		data_sensores = dict()
		data_sensores['data_sensores'] = []  #array
		select_data_sensores = self._get_data_sensor(idSensor)
		
		for row in select_data_sensores:
			data_sensor = dict()
			data_sensor['idDado'] = row[0]
			data_sensor['idGateway'] = row[1]
			data_sensor['Dado'] = row[2]
			data_sensor['RSSI'] = row[3]

			data_sensores['data_sensores'].append(data_sensor)
		print(data_sensores)

		return render_template('get_data_sensor.html', title='Listar Dados', data_sensores=data_sensores, idSensor=idSensor)#jsonify(data_sensores)


	def _get_sensores(self):
		return self.con.execute(text("""SELECT idSensor, Tipo, idNodo FROM Sensor"""))	

	def _get_data_sensor(self, idSensor):
		s = text("""SELECT idDado, idGateway, Dado, RSSI FROM Dado where idSensor = :idSensor""")
		data = self.con.execute(s, idSensor=idSensor).fetchall()
		return data
	
	#def login(self):

if __name__ == '__main__':
	ws = ws_page()
