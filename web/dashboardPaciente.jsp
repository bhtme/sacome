<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template>
    <jsp:attribute name="title">SACoMe - Área do Paciente</jsp:attribute>
    <jsp:body>
        <div class="box pBox">
            <div>Área do Paciente</div>
            <div class="btts">
                <a href="${pageContext.request.contextPath}/paciente?sair">Terminar Sessão</a>
            </div>
        </div>
        <div class="box pBox">
            <div>Agendar Consulta</div>
            <div>
                <c:if test="${!empty requestScope.mensagens}">
                    <ul class="erro">
                    <c:forEach items="${requestScope.mensagens}" var="mensagem">
                        <li>${mensagem}</li>
                    </c:forEach>
                    </ul>
                    <hr>
                </c:if>
                <form action="${pageContext.request.contextPath}/paciente/addConsulta" method="post" class="boxForm">
                    <label for="data">Data:</label>
                    <input id="data" name="data" type="date" value="${sessionScope.novaConsulta.data}" />
                    <label for="crm">CRM: <a href="${pageContext.request.contextPath}/listaMedicos">(clique para acessar a lista)</a></label>
                    <input id="crm" name="crm" type="text" value="${sessionScope.novaConsulta.crm || param.crm || ""}" />
                    <input type="submit" value="Agendar Consulta"/>
                </form>
            </div>
        </div>
        <div class="box pBox">
            <div>Minhas Consultas</div>
            <div>
                Nenhuma consulta encontrada
            </div>
        </div>
    </jsp:body>
</t:template>