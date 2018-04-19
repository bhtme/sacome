<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>SACoMe</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilo.css" />  
    </head>
    <body>
            <h1>Sistema de Agendamento de Consultas Médicas</h1><br>
            <h2>Área do Médico</h2>
        <div>
            <c:if test="${requestScope.docInvalid}">
                <span>CRM ou senha inválidos.</span>
            <hr>
            </c:if>
            <h3>Login</h3>
            <form method="post" action="MedicoLoginServlet">
                CPF:<input type="text" name="crm" /><br/>
                Senha:<input type="text" name="senha" /><br/>
                <input type="submit" value="Login" />
            </form>
        </div>
    </body>
</html>
