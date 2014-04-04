<%@ page import="noix.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="pessoa.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${pessoaInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${pessoaInstance?.nome}"/>

</div>

