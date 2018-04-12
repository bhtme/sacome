<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Agendamento de Consultas Médicasa</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <div>
        <h1>Cadastro de Médico</h1>
        </div>
        
        <div>
        <form action="NovoPalpiteServlet" method="post">
            Digite os dados:<br/>
            CRM: <input name="crm" type="text" value="" /><br/>
            Nome: <input name="nome" type="text" value="" /><br/>
            Senha: <input name="senha" type="text" value="" /><br/>
            Especialidade: <input name="especialidade" type="text" value="" /><br/>
            <input type="submit" value="Enviar"/>
        </form>
        </div>
    </body>
</html>