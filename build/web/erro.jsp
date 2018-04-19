<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template>
    <jsp:body>
        <div id="erro" class="box pBox">
            <div>Ocorreu um erro!</div>
            <div>
                <c:if test="${response.getStatus() == 500}">
                    ${exception.getMessage()}
                </c:if>
                <c:if test="${response.getStatus() == 404}">
                    Página não encontrada.<br />
                    Utilize o menu acima para retornar ao sistema
                </c:if>
                <c:if test="${mensagem != null}">
                    ${mensagem}
                </c:if>
            </div>
        </div>
    </jsp:body>
</t:template>
