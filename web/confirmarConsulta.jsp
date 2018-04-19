<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <titleSistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1>Agendar Consulta</h1>
        Atenção! Deseja cadastrar no sistema?
        <br/>
        Verifique se todas as informações estão corretas:
        <br/><br/>
        CPF: ${sessionScope.novaConsulta.cpf}<br/>
        CRM: ${sessionScope.novaConsulta.crm}<br/>
        Data ${sessionScope.novaConsulta.dataConsulta}<br/>
        <br/>
        <a href="GravarConsultaServlet">Confirmar</a>
        <a href="addConsultaForm.jsp">Modificar</a>
        <a href="index.jsp">Cancelar</a>
    </body>
</html>