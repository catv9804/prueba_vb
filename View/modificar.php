<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <title>Modificar</title>
</head>
<body>
<div class="general">
        <form id ="formulario">
        <h1>Modifica tu nueva entrada</h1>
            <div class="form-group">
                <label for="id">Ingrese el id de la entrda a modificar</label>
                <input id="id" name="id" class="form-control form-control-lg" type="text" placeholder="Id de la busqueda">
            </div>
            <div class="form-group">
            <button class="btn btn-primary" style="margin-bottom:2rem; margin-top:2rem;" id="buscar" name="buscar">Insertar </button>
            </div>
            <div id="aparecer">
           
            </div>
            
            
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

    </script>
    <script src="../js/modificar.js"></script>
</body>
</html>