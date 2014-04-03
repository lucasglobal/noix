
<%@ page import="noix.Livro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'livro.label', default: 'Livro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-livro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-livro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'livro.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'livro.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="pessoa" title="${message(code: 'livro.pessoa.label', default: 'Pessoa')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'livro.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${livroInstanceList}" status="i" var="livroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${livroInstance.id}">${fieldValue(bean: livroInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: livroInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: livroInstance, field: "pessoa")}</td>
					
						<td><g:formatBoolean boolean="${livroInstance.status}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${livroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>