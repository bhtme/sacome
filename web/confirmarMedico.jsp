<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <titleSistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="default.css" />
    </head>
    <body>
        <h1>Novo Médico</h1>
        Atenção! Deseja cadastrar no sistema?
        <br/>
        Verifique se todas as informações estão corretas:
        <br/><br/>
        CRM: ${sessionScope.novoMedico.crm}<br/>
        Nome: ${sessionScope.novoMedico.nome}<br/>
        Senha: ${sessionScope.novoMedico.senha}<br/>
        Especialidade: ${sessionScope.novoMedico.especialidade}<br/>
        <br/>
        <a href="GravarMedicoServlet">Confirmar</a>
        <a href="addMedicoForm.jsp">Modificar</a>
        <a href="index.jsp">Cancelar</a>
    </body>
</html>