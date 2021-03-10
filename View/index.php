
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Prueba">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../js/select.js"></script>
    <script src="../js/selectautores.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <title>Crear una entrada</title>
</head>
<body>
    <div class="general">
        <form id ="formulario">
        <h1>Crea tu nueva entrada</h1>
            <div class="form-group">
                <label for="titulo">Ingrese el título del articulo</label>
                <input id="titulo" name="titulo" class="form-control form-control-lg" type="text" placeholder="Título de la entrada">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Ingrese el contenido</label>
                <textarea class="form-control" id="contenido" name="contenido" rows="3"></textarea>
            </div>
            <div class="form-group" >
                <label for="autor">Autores</label>
                <select id="autor" class="form-control" multiple name="autor[]">
                    <option>Hola</option>
                </select>
            </div>
            <div class="form-group" >
                <label for="categoria">Categorias</label>
                <select id="categoria" class="form-control" multiple>
                    <option value="0">Seleccione la categoria</option>
                </select>
            </div>
            <button class="btn btn-primary" style="margin-bottom:2rem; margin-top:2rem;" id="submit" name="submit">Insertar </button>
        </form>
        <h1 id="lid"> </h1>
    </div>
    <style>
        .general{
            display:flex;
            justify-content:center;
            max-width:60vw;
            margin-left:20vw;
        }
    </style>
    <script>
    
        document.getElementById("submit").addEventListener("click",function(e){
            e.preventDefault()
    
        console.log("presionando click")
        const nombre = document.getElementById("titulo").value;
        const contenido = document.getElementById("contenido").value;
        //const contenido = document.getElementById("titulo").value;
        //console.log(document.getElementById("autor[i]").value)
        $.ajax({
            url: '../Controller/crear_entrada.php',
            type:'POST',
            //contentType: 'application/json',
            //dataType:"json",
            data:
            {
                nombre:nombre,
                contenido:contenido,
                autor: $("#autor").val(),
                categoria:$("#categoria").val()
                
            },
            success:  function (data) {
                
                var dataParsed=data;
                //var lid ="" 
                //document.getElementById("lid").innerHTML=dataParsed
                console.log(dataParsed); 
                
                
                
            }       
        });
        //document.getElementById("respuesta").value="";
        
    });
    
    
    </script>
    
</body>
</html>