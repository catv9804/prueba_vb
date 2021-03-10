document.getElementById("buscar").addEventListener("click", function(e){
    e.preventDefault();
    $.ajax({
        url: '../model/modificar.php',
        type: 'GET',
        success: function(response) {
          console.log("Llenando el select")
          console.log(response)
          const entradas= JSON.parse(response);
          let template = '';
          entradas.forEach(entrada=> {
  
            template += `
            <div class="form-group">
              <label for="nombre">Modifica el titulo</label>
              <input id="nombre">${entrada.nombre}</input>
            </div>
            <div class="form-group">
              <label for="nombre">Modifica el contenido</label>
              <input id="nombre">${entrada.contenido}</input>
            </div>
                    
                  `
          });
          $('#aparecer').html(template);
        }
      });

})