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
            <h1>Plantas detalhes</h1>
            <h3>Escolha uma planta:</h3>

            <ul>
                <li>{nome}(<a href='produtos_detalhes.php' target='_self'>ver detalhes</a>)</li>
            </ul>

        </div>
    </div>
</div>
<footer>
    <?php include("footer.php"); ?>
</footer>
</body>

</html>
