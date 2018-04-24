<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Cliente"%>
<%@page import="br.com.fatecpg.dados.BD"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
       <link href="css/newcss.css" rel="stylesheet">
    <%@include file="WEB-INF/jspf/cabeçalho.jspf"%>       
    </head>
    <body>
       
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
    <div class="container-fluid cor-2 text-center">    
            
            <div class="row">
                <div class="container">
                    <div class="col-sm-4">
                        <p style="font-weight: bold">Caio Bispo</p>
                        <p> Análise e Desenvolvimento de Sistemas na FATEC-PG</p>
                        <center><img src="fotos/caio.jpg" class="img-responsive img-circle margin imagem"></center><br>
                        <center><a href="https://www.linkedin.com/in/caio-bispo-173607162/" style="color:#1abc9c">LinkedIn</a></center>
                    </div> 

                    <div class="col-sm-4"> 
                        <p style="font-weight: bold">Michel Schaaf Lessa</p>
                        <p>ADS - FATEC - 2018</p>
                        <center><img src="fotos/michel.jpg" class="img-responsive img-circle margin imagem"></center><br>
                        <center><a href="https://github.com/MichelSchaaf" style="color:#1abc9c">GitHub</a></center>
                    </div>

                    <div class="col-sm-4"> 
                        <p style="font-weight: bold">Fernando Pedro</p>
                        <p>ADS - FATEC- 2018</p>
                        <center><img src="fotos/fernando.jpg" class="img-responsive img-circle margin imagem"></center><br>
                        <center><a href="https://github.com/fernando0123" style="color:#1abc9c">GitHub</a></center>
                    </div>
                </div>
            </div>
        </div>
</html>