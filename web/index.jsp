<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:remove scope="session" var="novoMedico" />

<html>
    <head>
        <title>SACoMe</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="estilo.css" />  
    </head>
    <body>
        <span>Sistema de Agendamento de Consultas Médicas</span>
        <a href="/listaMedicos" class="bbt">Listar Médicos</a>
        <div>
            <span>Acesso Paciente</span>
            <form method="post">
                <input type="text" name="cpf" id="pac-cpf" placeholder="CPF" />
                <input type="password" name="senha" id="pac-senha" placeholder="Senha"/>
                <input type="submit" name="login" id="pac-login" value="acessar" />
            </form>
        </div>
        <div>
            <span>Acesso Médico</span>
            <form method="post">
                <input type="text" name="crm" id="med-crm" placeholder="CRM" />
                <input type="password" name="senha" id="med-senha" placeholder="Senha"/>
                <input type="submit" name="login" id="med-login" value="acessar" />
            </form>
        </div>
        <div>
             <a href="addMedicoForm.jsp">Adicionar Médico</a><br/>
             <a href="addPacienteForm.jsp">Adicionar Paciente</a><br/>
        </div>
    </body>
</html>
