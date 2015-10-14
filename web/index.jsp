<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> index.jsp </title>
        <script>
            window.onload = function() {
                // BOM                
                // L'objet Window - source de : http://www.w3schools.com/jsref/obj_window.asp 
                var fermer = confirm("Voulez-vous fermer la fenêtre ?");
                if( fermer ) window.close();
                var nom = window.prompt("Veuillez saisir votre nom : ", "default value");
                alert("Bonjour " + nom + " !! Bienvenue à mon site.");
                //window.print(); sert à afficher le menu pour l'impression de la page
                alert(  "innerHeight = " + window.innerHeight + "\n" +
                        "innerWidth = " + window.innerWidth + "\n" + 
                        "length = " + window.length + "\n" +
                        "location = " + window.location + "\n" +
                        "name = " + window.name + "\n" + 
                        "navigator = " + window.navigator + "\n" + 
                        "outerHeight = " + window.outerHeight + "\n" + 
                        "outerWidth = " + window.outerWidth);
                
                // L'objet Navigator - source de : http://www.w3schools.com/jsref/obj_navigator.asp 
                alert(  "appCodeName =  " + navigator.appCodeName + "\n" +
                        "appName =  " + navigator.appName + "\n" +
                        "appVersion = " + navigator.appVersion + "\n" + 
                        "cookieEnabled = " + navigator.cookieEnabled + "\n" +
                        "geolocation = " + navigator.geolocation + "\n" +
                        "language = " + navigator.language + "\n" +
                        "online = " + navigator.onLine + "\n" +
                        "platform = " + navigator.platform + "\n" +
                        "product = " + navigator.product + "\n" +
                        "userAgent = " + navigator.userAgent);
                // l'objet screen

                // l'objet history
                //history.go("http://www.google.ca");
                
                // l'objet location
                alert(  "location.host = " + location.host + "\n" +
                        "location.hostname = " + location.hostname + "\n" + 
                        "location.href = " + location.href + "\n" + 
                        "location.origin = " + location.origin + "\n" + 
                        "location.pathname = " + location.pathname + "\n" + 
                        "location.port = " + location.port + "\n" + 
                        "location.protocol = " + location.protocol + "\n" + 
                        "location.search = " + location.search);
                //location.assign("http://www.google.ca");
                location.replace("http://www.facebook.com");
// Fin des BOM                
                // button
                document.getElementsByName("inputButton")[0].addEventListener("click", function() {
                   alert("Vous avez cliqué sur le bouton !"); 
                });
                // checkbox
                document.getElementsByName("inputCheckbox")[0].addEventListener("click", function() {
                    alert("Vous avez coché un checkbox !"); 
                });
                document.getElementsByName("inputCheckbox")[1].addEventListener("click", function() {
                    alert("Vous avez coché un checkbox !"); 
                });
                //color
                document.getElementsByName("inputColor")[0].addEventListener("click", function() {
                   alert("Vous avez ouvert le color picker !");
                });
            }
        </script>
    </head>
    <body>
<%
        if( request.getParameter("message") != null )
            out.println("<h3>" + request.getParameter("message") +"</h3>");
%>        
        <input type="button" name="inputButton" value="Je suis un bouton"/><br/>
        
        <input type="checkbox" name="inputCheckbox" value="Marié"/>Marié
        <input type="checkbox" name="inputCheckbox" value="Célibataire"/>Célibataire<br/>
        
        <input type="color" name="inputColor"/><br/>
        
        <input type="date" name="inputDate"/><br/>
        
        <input type="datetime" name="inputDatetime"/><br/>
        
        <input type="email" name="inputEmail"/><br/>
        
        <input type="file" name="inputFile"/><br/>
        
        <input type="hidden" name="inputHidden" value="magique"/><br/>
        
        <input type="image" name="inputImage"/><br/>
        
        <input type="number" name="inputNumber"/><br/>
        
        <input type="password" name="inputPassword"/><br/>
        
        <input type="radio" name="sexe" value="male"/>
        <input type="radio" name="sexe" value="female"/><br/>
        
        <input type="range" name="inputRange"/><br/>
        
        <input type="reset" name="inputReset"/><br/>
        
        <input type="search" name="inputSearch"/><br/>
        
        <input type="submit" name="inputSubmit" value="soumettre"/><br/>
        
        <input type="tel" name="inputTel"/><br/>
        
        <input type="text" name="inputText"/><br/>
        
        <input type="time" name="inputTime"/><br/>
        
        <input type="url" name="inputUrl"/><br/>
        
        <input type="week" name="inputWeek"/><br/>        
    </body>
</html>
