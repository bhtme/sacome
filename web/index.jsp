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
        <link rel="stylesheet" type="text/css" href="estilo.css" />  
    </head>
    <body>
        <c:if test="${!empty mensagem}">
            ${mensagem}
            <hr>
        </c:if>
        <span>Sistema de Agendamento de Consultas Médicas</span>
        <div>
             <a href="addMedicoForm.jsp">Adicionar Médico</a><br/>
             <a href="addPacienteForm.jsp">Adicionar Paciente</a><br/>
        </div>
    </body>
</html>
