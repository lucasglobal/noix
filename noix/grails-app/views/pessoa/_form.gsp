<%@ page import="noix.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="pessoa.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${pessoaInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'livros', 'error')} ">
	<label for="livros">
		<g:message code="pessoa.livros.label" default="Livros" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pessoaInstance?.livros?}" var="l">
    <li><g:link controller="livro" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="livro" action="create" params="['pessoa.id': pessoaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'livro.label', default: 'Livro')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${pessoaInstance?.nome}"/>

</div>

