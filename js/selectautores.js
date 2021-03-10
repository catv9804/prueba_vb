$(document).ready(function(){
    // Trayendo las actividades
    fetchCategorias();
function fetchCategorias() {
    $.ajax({
      url: '../controller/selectautores.php',
      type: 'GET',
      success: function(response) {
        console.log("Llenando el select de autores")
        console.log(response)
        const autores= JSON.parse(response);
        let template = '';
        autores.forEach(autor => {

          template += `
          <option value="${autor.id}">${autor.nombre}</option>
                  
                `
        });
        $('#autor').html(template);
      }
    });
  }

})