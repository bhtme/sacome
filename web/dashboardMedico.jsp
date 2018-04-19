<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template>
    <jsp:attribute name="title">SACoMe - Área do Médico</jsp:attribute>
    <jsp:body>
        <div class="box pBox">
            <div>Área do Médico</div>
            <div class="btts">
                <a href="${pageContext.request.contextPath}/medico?sair">Terminar Sessão</a>
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
