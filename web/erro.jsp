<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SACoMe - Ocorreu um Erro</title>
        <link rel="stylesheet" type="text/css" href="default.css" />
        <link rel="stylesheet" type="text/css" href="erro.css" />
    </head>
    <body>
        <div id="top-bar">
            <span>Sistema de Agendamento de Consultas Médicas</span>
            <a href="admin">acesso restrito</a>
        </div>
        <div id="erro">
            <div>Ocorreu um erro!</div>
            <div>
                <% if(response.getStatus() == 500){ %>
                <%=exception.getMessage() %>
                <%}else if(response.getStatus() == 404){ %>
                Página não encontrada
                <%}else {%>
                ${mensagem}
                <%} %>
            </div>
        </div>
    </body>
</html>