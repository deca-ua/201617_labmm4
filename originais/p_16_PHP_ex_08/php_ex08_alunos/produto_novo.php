<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LABMM4: Arrays</title>

    <!-- http://www.w3schools.com/bootstrap/default.asp -->


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


    <link rel="stylesheet" href="css/custom.css">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-xs-3">
            <header>
                <?php include("header.php"); ?>
            </header>
        </div>
        <div class="col-xs-9">
            <h1>Inserção de nova planta</h1>
            <br>

            <form action="#" autocomplete="on" method="post" class="form-horizontal">
                <div class="form-group">
                    <div class="control-group required column-group gutters">
                        <label for="nome" class="col-sm-2 control-label">Nome</label>

                        <div class="col-sm-10">
                            <input type="text" name="nome" placeholder="Nome da planta" required="required"
                                   class="form-control">

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="control-group required column-group gutters">
                        <label for="descricao" class="col-sm-2 control-label">Descrição</label>

                        <div class="col-sm-10">
                            <textarea name="descricao" placeholder="Informações sobre a planta" required="required"
                                      class="form-control"></textarea>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="control-group required column-group gutters">
                        <label for="preco" class="col-sm-2 control-label">Preço</label>

                        <div class="col-sm-10">
                            <input type="text" name="preco" placeholder="Preço em euros" required="required"
                                   class="form-control">
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" name="submit" class="btn btn-default">Guardar</button>
                    </div>
                </div>
            </form>

            {lista de plantas}

        </div>
    </div>
</div>
<footer>
    <?php include("footer.php"); ?>
</footer>
</body>

</html>
