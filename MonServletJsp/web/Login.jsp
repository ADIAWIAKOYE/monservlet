<%-- 
    Document   : Login
    Created on : 22 juil. 2022, 17:58:22
    Author     : aadiawiakoye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="FormInscrs">
            <div class="Formtext">Connection</div>
            <div class="Formsaisie">
                <form method="post" action="monservlet3">
                  
                    <span>Pseudo :</span>
                    <input type="text" name="pseudo" placeholder="Taper votre pseudo" required="" />
                    <span>Mot de passe :</span>
                    <input type="password" name="password" placeholder=" Mot de passe" required="" />
                    
                    <input type="submit" name="name" value="Se Connecter" class="btnInscris" />
                </form>
            </div>
        </div> 
        <style>
             *{
                box-sizing: border-box;
            }
            body{
                margin: 0;
                padding: 0;
                font-family: sans-serif;
                font-size: 16px;
                color: #fff;
                background-color: #b9b5b5;
                padding-top: 60px;
                
            }
            .FormInscrs{
                
                width: 450px;
                height: 400px;
                background-color: #1f1f22; 
                margin: auto;
                top: 0;
                left: 0;
                right: 0;
                padding: 30px;
                border-radius: 5px;
                border-top: 5px solid #46cb49;
                border-bottom: 5px solid #46cb49;
                box-shadow: 0 0 10px #000;
            }
             .Formtext{
                font-size: 32px;
                font-weight: 600;
                text-align: center;
                padding-bottom: 30px;
            }
            .Formsaisie span{
                font-size: 14px;
                font-weight: bold;
            }
            .Formsaisie input{
                width: 100%;
                font-size: 16px;
                outline: none;
                background-color: #1f1f22;
                color: #fff;
                margin: 10px 0;
                padding: 10px;
                border: 1px solid #fff;
                border-radius: 10px;
            }
           .Formsaisie .btnInscris{
                 margin-top: 70px;
                 background-color: green;    
            }
        </style>
    </body>
</html>
