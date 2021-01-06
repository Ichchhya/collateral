<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'collateral.label', default: 'Collateral')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#edit-collateral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
    <div class="content-wrapper create">
        <div id="edit-collateral" class="content scaffold-edit" role="main">
            %{--<h1><g:message code="default.edit.label" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.collateral}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.collateral}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-gradient-olive theader">
                            <h2>Edit Collateral </h2>
                        </div>
            <g:form resource="${this.collateral}" method="PUT">
                <g:hiddenField name="version" value="${this.collateral?.version}" />
                %{--<g:each in = "${collateralList}" var="t" status="counter">--}%
                %{--<div class="form-group">--}%
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Collateral ID</label>
                        %{--<g:textField id="exampleInputEmail1"  value="${this.collateral?.id}"  class="form-control" name="collateral_id"  required="" autofocus=""/>--}%
                        <input type="text" name="collateral_id" value="${this.collateral?.id}" class="form-control" id="exampleInputEmail1" >
                    </div>
                    <div class="form-group">
                        <label for="edesc"> Collateral English Description</label>
                        <input type="text" value="${this.collateral?.collateral_english_description}"  name="collateral_english_description" class="form-control" id="edesc">
                    </div>
                    <div class="form-group">
                        <label for="ccode">Collateral Code</label>
                        <input type="text" value="${this.collateral?.collateral_code}" name="collateral_code" class="form-control" id="ccode">
                    </div>
                    <div class="form-group">
                        <label for="caddress">Collateral Address</label>
                        <input type="text" value="${this.collateral?.collateral_address}" name="collateral_address" class="form-control" id="caddress" >
                    </div>
                    <div class="form-group">
                        <label for="rdate">Registeration Date</label>
                <g:datePicker name="registeration_date" value="${this.collateral?.registeration_date}" precision="day"/>
            %{--<input type="date" name="registeration_date" class="form-control" id="rdate">--}%
                </div>
                <div class="form-group">
                    <label for="bdate">Buy Date</label>
                    <g:datePicker name="buy_date" value="${this.collateral?.buy_date}" precision="day"/>
                    %{--<input type="date" name="buy_date" class="form-control" id="bdate" >--}%
                </div>
                <div class="form-group">
                    <label for="validuntil">Valid Until</label>
                    <g:datePicker name="valid_until" value="${this.collateral?.valid_until}" precision="day"/>
                    %{--<input type="date" name="valid_until" class="form-control" id="validuntil" >--}%
                </div>

                <g:submitButton name="save" class="save btn btn-success" value="${message(code: 'default.button.update.label', default: 'Update')}" />

            </g:form>



            %{--<g:form resource="${this.collateral}" method="PUT">--}%
                %{--<g:hiddenField name="version" value="${this.collateral?.version}" />--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="collateral"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
                 </div>
              </div>
             </div>
            </div>
        </div>
        </div>
    </div>
    </body>
</html>
