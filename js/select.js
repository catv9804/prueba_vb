$(document).ready(function(){
    // Trayendo las actividades
    fetchCategorias();
function fetchCategorias() {
    $.ajax({
      url: '../controller/select.php',
      type: 'GET',
      success: function(response) {
        console.log("Llenando el select")
        console.log(response)
        const categorias= JSON.parse(response);
        let template = '';
        categorias.forEach(categoria => {

          template += `
          <option value="${categoria.id}">${categoria.nombre}</option>
                  
                `
        });
        $('#categoria').html(template);
      }
    });
  }

})
