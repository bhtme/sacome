<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <div>
        <h1>Cadastro de Médico</h1>
        </div>
        
        <div>
        <form action="AddMedicoServlet" method="post">
            Digite os dados:<br/>
            CRM: <input name="crm" type="text" value="${sessionScope.novoMedico.crm}" /><br/>
            Nome: <input name="nome" type="text" value="${sessionScope.novoMedico.nome}" /><br/>
            Senha: <input name="senha" type="text" value="${sessionScope.novoMedico.senha}" /><br/>
            Especialidade: <input name="especialidade" type="text" value="${sessionScope.novoMedico.especialidade}" /><br/>
            <input type="submit" value="Enviar"/>
        </form>
        </div>
    </body>
</html>