<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <titleSistema de Agendamento de Consultas Médicas</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <h1>Novo Paciente</h1>
        Atenção! Deseja cadastrar no sistema?
        <br/>
        Verifique se todas as informações estão corretas:
        <br/><br/>
        CPF: ${sessionScope.novoPaciente.cpf}<br/>
        Nome: ${sessionScope.novoPaciente.nome}<br/>
        Senha: ${sessionScope.novoPaciente.senha}<br/>
        Telefone: ${sessionScope.novoPaciente.telefone}<br/>
        Nascimento: ${sessionScope.novoPaciente.dataDeNascimento}<br/>
        Sexo: ${sessionScope.novoPaciente.sexo}<br/>
        <br/>
        <a href="GravarPacienteServlet">Confirmar</a>
        <a href="addPacienteForm.jsp">Modificar</a>
        <a href="index.jsp">Cancelar</a>
    </body>
</html>