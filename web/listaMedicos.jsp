<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SACoMe - Encontre um Médico</title>
        <link rel="stylesheet" type="text/css" href="default.css" />
    </head>
    <body>
        <h1>Listagem de Médicos cadastrados.</h1>
        <form action="VerMedicosServlet" method="post">
                Buscar por especialidade:<br/>
                <select name="especialidade">
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
                <input type="submit" value="Buscar"/>
        </form>
        <hr>
        <c:if test="${empty requestScope.listaMedicos}">
            A busca não retornou nenhum resultado.
        </c:if>
        <c:if test="${!empty requestScope.listaMedicos}">
            <table>
                <tr>
                    <th class="esquerda">CRM</th>
                    <th>Nome</th>
                    <th>Especialidade</th>
                </tr>
                <c:forEach items="${requestScope.listaMedicos}" var="medico">
                    <tr>
                        <td class="esquerda">${medico.crm}</td>
                        <td>${medico.nome}</td>
                        <td>${medico.especialidade}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </body>
</html>