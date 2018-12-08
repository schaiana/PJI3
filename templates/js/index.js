var endereco_base = 'http://localhost:5000';

//Salvar uma rota via REST
function get_sensores() {
    $.ajax({
        // Local onde está o recurso desejado
        url: endereco_base + '/get_sensores',
        // Method utilizado
        type: 'GET',
  	    // dados para autenticação
		    beforeSend: function (xhr) {
        xhr.setRequestHeader ("Authorization", localStorage.info_autenticacao);
		    },
        //O dado é do tipo JSON
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        //Permite acesso a crossdomain
        crossDomain: true,
        // Se recebeu com sucesso
        success: function (data) {
          x = (data['sensor_id'][0]); 
          console.log('valor de x:' + x);
          $.mobile.navigate("sensores.html");
          alert('Listando sensores!');
        }
    });
};




function logoff() {
	$.mobile.navigate("index.html");
}
