<%-- 
    Document   : Inscrire
    Created on : 22 juil. 2022, 15:17:52
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
            <div class="Formtext">Inscription</div>
            <div class="Formsaisie">
                <form action="Monservlet2" method="post">
                    <span>Nom :</span>
                    <input type="text" name="nom" placeholder="Taper votre nom" required="" />
                     <span>Prénom :</span>
                    <input type="text" name="prenom" placeholder="Taper votre prenom" required="" />
                    <span>Pseudo :</span>
                    <input type="text" name="pseudo" placeholder="Taper votre pseudo" required="" />
                    <span>Email :</span>
                    <input type="email" name="email" placeholder="Taper votre email" required="" />
                    <span>Mot de passe :</span>
                    <input type="password" name="password" placeholder=" Mot de passe" required="" />
                    <span>Répétez le mot de passe :</span>
                    <input type="password" name="rpassword" placeholder="Répétéz le mot de passe" required="" />
                    <div class="btn">
                        <input type="submit" name="inscrire" value="S'inscrire" class="btnInscris">
                        <input type="reset" name="annuler" value="Annuler" class="btnAnnuler">
                    </div>
                    
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
                padding-top: 30px;
                
            }
            .FormInscrs{
                
                width: 350px;
                height: 600px;
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
            .btn{
                display: flex;
            }
            div .btn .btnAnnuler{
                background-color: red;
            }
            div .btn .btnInscris{
                background-color: green;
            }
        </style>
    </body>
</html>
