<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />

        <asset:stylesheet src="formdesign.css"/>
        <asset:stylesheet src="../images/img/images/nodatafound.png"/>
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#create-loan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="create-loan" class="content scaffold-create" role="main">--}%
            %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
            %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<g:hasErrors bean="${this.loan}">--}%
            %{--<ul class="errors" role="alert">--}%
                %{--<g:eachError bean="${this.loan}" var="error">--}%
                %{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
                %{--</g:eachError>--}%
            %{--</ul>--}%
            %{--</g:hasErrors>--}%
            %{--<g:form resource="${this.loan}" method="POST">--}%
                %{--<fieldset class="form">--}%
                    %{--<f:all bean="loan"/>--}%
                %{--</fieldset>--}%
                %{--<fieldset class="buttons">--}%
                    %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
                %{--</fieldset>--}%
            %{--</g:form>--}%
        %{--</div>--}%

    <div class="content-wrapper create">
        <div id="create-loan" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.loan}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.loan}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-green theader">
                                <h2>Loan Form </h2>
                            </div>
                            <g:form resource="${this.loan}" method="POST">
                                <div class="form-group">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Loan number</label>
                                        <input type="text" name="loan_number" class="form-control" id="exampleInputEmail1" placeholder="Enter loan number">
                                    </div>


                                <div class="form-group">
                                    <label for="interestrate">Interest rate</label>
                                    <input type="text" name="interest_rate" class="form-control" id="interestrate" placeholder="Enter the interest rate">
                                </div>
                                <div class="form-group">
                                    <label for="penalinterestrate"> Penal interest rate</label>
                                    <input type="text" name="penal_interest_rate" class="form-control" id="penalinterestrate" placeholder="Enter the penal interest rate">
                                </div>
                                <div class="form-group">
                                    <label for="amt">Approved amount</label>
                                    <input type="text" name="approved_amount" class="form-control" id="amt" placeholder="Enter the approved amount">
                                </div>
                                <div class="form-group">
                                    <label for="pcode">Project code</label>
                                    <input type="text" name="project_code" class="form-control" id="pcode" placeholder="Enter the project code">
                                </div>


                                <g:submitButton name="index" class="save btn bg-gradient-green createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>
