<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <div>
        <h1>Agendamento de Consulta</h1>
        </div>
        
        <div>
            <c:if test="${!empty requestScope.mensagens}">
            <ul class="erro">
            <c:forEach items="${requestScope.mensagens}" var="mensagem">
                <li>${mensagem}</li>
            </c:forEach>
            </ul>
            <hr>
            </c:if>
                
            <form action="AddConsultaServlet" method="post">
                Digite os dados:<br/>
                <br>
                CPF: <input name="cpf" type="text" value="${sessionScope.novaConsulta.cpf}" /><br/>
                CRM: <input name="crm" type="text" value="${sessionScope.novaConsulta.crm}" /><br/>
                Data: <input name="dataConsulta" type="text" value="${sessionScope.novaConsulta.dataConsulta}" /><br/>
                <input type="submit" value="Enviar"/>
            </form>
        </div>
    </body>
</html>