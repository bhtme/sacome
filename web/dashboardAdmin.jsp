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
            <h2>Área de Administração</h2>
        <div>
            <c:if test="${requestScope.adminValid}">
            <div>
            <a href="addMedicoForm.jsp">Adicionar Médico</a><br/><br>
            <a href="addPacienteForm.jsp">Adicionar Paciente</a><br/><br>
            </div>
            </c:if>
            <c:if test="${!requestScope.adminValid}">
                <h3>Dashboard da Administração</h3>
            <hr>
            <div>
                <span>Você precisa estar logado para ver esta página!</span><br/>
                <br/><a href="adminLogin.jsp">Login</a><br/><br>
            </div>
            </c:if>
        </div>
    </body>
</html>
