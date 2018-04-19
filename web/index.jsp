<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:remove scope="session" var="novoMedico" />
<c:remove scope="session" var="novoPaciente" />

<html>
    <head>
        <title>SACoMe</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="default.css" />  
    </head>
    <body>
        <c:if test="${!empty mensagem}">
            ${mensagem}
            <hr>
        </c:if>
        <div id="top-bar">
            <span>Sistema de Agendamento de Consultas Médicas</span>
            <a href="admin">acesso restrito</a>
        </div>
        <div id="btts">
            <a href="paciente">Área do Paciente</a>
            <a href="medico">Área do Médico</a>
            <a href="listaMedicos">Encontre um Médico</a>
        </div>
    </body>
</html>
