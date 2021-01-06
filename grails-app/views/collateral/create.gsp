<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'collateral.label', default: 'Collateral')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

        <asset:stylesheet src="formdesign.css"/>
        <asset:stylesheet src="../images/img/images/nodatafound.png"/>
    </head>
    <body>
        %{--<a href="#create-collateral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        <div class="content-wrapper create">
            <div id="create-collateral" class="content scaffold-create" role="main">
            %{--<h1><g:message code="Collateral Form" args="[entityName]" /></h1>--}%
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
                                <h2>Collateral Form </h2>
                            </div>
                            <g:form resource="${this.collateral}" method="POST">
                                <div class="form-group">
                                <div class="card-body">
                                    %{--<div class="form-group">--}%
                                        %{--<label for="exampleInputEmail1">Collateral ID</label>--}%
                                        %{--<input type="text" name="collateral_id" class="form-control" id="exampleInputEmail1" placeholder="Enter collateral ID">--}%
                                    %{--</div>--}%
                                    <div class="form-group">
                                            <label for="project_id">Select Project Name</label>
                                            <ct:proj name="project_id" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="pcode">Project Code</label>
                                        <input type="text" name="project_code" class="form-control" id="pcode" placeholder="Enter the project code">
                                    </div>
                                    <div class="form-group">
                                        <label for="edesc"> Collateral English Description</label>
                                        <input type="text" name="collateral_english_description" class="form-control" id="edesc" placeholder="Enter the description in English">
                                    </div>
                                    <div class="form-group">
                                        <label for="ccode">Collateral Code</label>
                                        <input type="text" name="collateral_code" class="form-control" id="ccode" placeholder="Enter the collateral code">
                                    </div>
                                    <div class="form-group">
                                        <label for="caddress">Collateral Address</label>
                                        <input type="text" name="collateral_address" class="form-control" id="caddress" placeholder="Enter the collateral address">
                                    </div>
                                    <div class="form-group">
                                        <label for="rdate">Registeration Date</label>
                                            <g:datePicker name="registeration_date" precision="day"/>
                                            %{--<input type="date" name="registeration_date" class="form-control" id="rdate" placeholder="Enter the date of registration">--}%
                                        </div>
                                        <div class="form-group">
                                            <label for="bdate">Buy Date</label>
                                            <g:datePicker name="buy_date" precision="day"/>
                                            %{--<input type="date" name="buy_date" class="form-control" id="bdate" placeholder="Enter the buy date">--}%
                                        </div>
                                        <div class="form-group">
                                            <label for="validuntil">Valid Until</label>
                                            <g:datePicker name="valid_until" precision="day"/>
                                            %{--<input type="date" name="valid_until" class="form-control" id="validuntil" placeholder="Enter the date of validation expiry">--}%
                                        </div>

                                        <g:submitButton name="create" class="save btn btn-success createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
    </body>
</html>
