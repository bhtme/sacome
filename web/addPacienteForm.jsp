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
        <h1>Cadastro de Paciente</h1>
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
                
            <form action="AddPacienteServlet" method="post">
                Digite os dados:<br/>
                <br>
                CPF: <input name="cpf" type="text" value="${sessionScope.novoPaciente.cpf}" /><br/>
                Nome: <input name="nome" type="text" value="${sessionScope.novoPaciente.nome}" /><br/>
                Senha: <input name="senha" type="text" value="${sessionScope.novoPaciente.senha}" /><br/>
                Telefone: <input name="telefone" type="text" value="${sessionScope.novoPaciente.telefone}" /><br/>
                Data de nascimento: <input name="dataDeNascimento" type="text" value="${sessionScope.novoPaciente.dataDeNascimento}" /><br/>
                Sexo: <input name="sexo" type="text" maxlength="1" value="${sessionScope.novoPaciente.sexo}" /><br/>
                <input type="submit" value="Enviar"/>
            </form>
        </div>
    </body>
</html>