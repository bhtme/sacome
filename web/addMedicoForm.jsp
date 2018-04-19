<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="default.css" />
    </head>
    <body>
        <div>
        <h1>Cadastro de Médico</h1>
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
                
            <form action="AddMedicoServlet" method="post">
                Digite os dados:<br/>
                <br>
                CRM: <input name="crm" type="text" value="${sessionScope.novoMedico.crm}" /><br/>
                Nome: <input name="nome" type="text" value="${sessionScope.novoMedico.nome}" /><br/>
                Senha: <input name="senha" type="text" value="${sessionScope.novoMedico.senha}" /><br/>
                Especialidade: <br><select name="especialidade">
                                <option value="none">--Especialidade--</option>
                                <option value="Acupuntura">Acupuntura</option>
                                <option value="Cardiologia">Cardiologia</option>
                                <option value="Dermatologia">Dermatologia</option>
                                <option value="Geriatria">Geriatria</option>
                                <option value="Ginecologia">Ginecologia</option>
                                <option value="Neurologia">Neurologia</option>
                                <option value="Oftalmologia">Oftalmologia</option>
                                <option value="Ortopedia">Ortopedia</option>
                                <option value="Otorrinolaringologia">Otorrinolaringologia</option>
                                <option value="Pediatria">Pediatria</option>    
                                <option value="Pneumologia">Pneumologia</option>
                                <option value="Urologia">Urologia</option>           
                                </select> <br/>
                <input type="submit" value="Enviar"/>
            </form>
        </div>
    </body>
</html>