<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loansetup.label', default: 'Loansetup')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="content-wrapper create">
        <div id="create-loansetup" class="content scaffold-create" role="main">
        %{--<h1><g:message code="Collateral Form" args="[entityName]" /></h1>--}%
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.loansetup}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.loansetup}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-secondary theader">
                                <h2>Loan Setup Form </h2>
                            </div>
                            <g:form resource="${this.loansetup}" method="POST" >
                                <div class="form-group">
                                <div class="card-body">

                                <div class="form-group">
                                    <label for="loan_id">Loan ID</label>
                                    <input type="text" name="loan_id" class="form-control" id="loan_id" placeholder="Enter the Loan Id">
                                </div>
                                <div class="form-group">
                                    <label for="loan_type"> Loan Type</label>
                                    <input type="text" name="loan_type" class="form-control" id="loan_type" placeholder="Enter the Loan Type">
                                </div>

                                <g:submitButton name="index" class="save btn btn-secondary createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
