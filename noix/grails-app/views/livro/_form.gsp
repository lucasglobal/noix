<%@ page import="noix.Livro" %>



<div class="fieldcontain ${hasErrors(bean: livroInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="livro.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${livroInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: livroInstance, field: 'pessoa', 'error')} ">
	<label for="pessoa">
		<g:message code="livro.pessoa.label" default="Pessoa" />
		
	</label>
	<g:select id="pessoa" name="pessoa.id" from="${noix.Pessoa.list()}" optionKey="id" value="${livroInstance?.pessoa?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livroInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="livro.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${livroInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: livroInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="livro.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${livroInstance?.nome}"/>

</div>

