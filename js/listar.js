$(document).ready(function(){
    // Trayendo las actividades
    fetchEntradas();
function fetchEntradas() {
    $.ajax({
      url: '../model/listar.php',
      type: 'GET',
      success: function(response) {
        console.log("Llenando el select")
        console.log(response)
        const entradas= JSON.parse(response);
        let template = '';
        entradas.forEach(entrada => {

          template += `
          <li id="${entrada.id}">${entrada.nombre}
          <br> ${entrada.contenido}</li>
                  
                `
        });
        $('#categoria').html(template);
      }
    });
  }

})