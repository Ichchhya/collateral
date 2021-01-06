<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loansetup.label', default: 'Loansetup')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header bg-gradient-secondary theader">
                                <h2>Loan Setup Form </h2>
                            </div>
                            <g:form resource="${this.loansetup}" method="POST" controller="loansetup" action="create1">
                                <div class="form-group">
                                <div class="card-body">

                                <div class="form-group">
                                    <label for="loan_id">Loan ID</label>
                                    <input type="text" name="loan_id" class="form-control" id="loan_id" placeholder="Enter the Loan Id">
                                </div>
                                <div class="form-group">
                                    <label for="loan_type"> Loan Type</label>
                                    <input type="text" name="loan_type"  class="form-control" id="loan_type" placeholder="Enter the Loan Type">
                                </div>

                                <g:submitButton name="index" action="create1" class="save btn bg-gradient-secondary createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header bg-gradient-secondary theader">
                                <h2>Loan Setup List</h2>
                                %{--<span class="float-right down">--}%
                                    %{--<div class="nav-item dropdown">--}%
                                        %{--<a class="nav-link text-white" data-toggle="dropdown" href="#">--}%
                                            %{--<h3><i class="fas fa-sliders-h"></i></h3>--}%
                                        %{--</a>--}%
                                        %{--<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">--}%
                                            %{--<div class="dropdown-item">--}%
                                                %{--<g:link action="create" controller="loansetup" class=" text-secondary">--}%
                                                    %{--<h5><i class="fas fa-plus-square"></i> Create new Loan Setup</h5>--}%
                                                %{--</g:link>--}%
                                            %{--</div>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                %{--</span>--}%
                            </div>
                            <div class="card-body">
                                <g:if test="${loansetupList}">

                                    <table id="example1" class="table table-striped table-bordered" style="width:100%">
                                        <thead class="bg-gradient-secondary">
                                        <tr >
                                            %{--<th>ID</th>--}%
                                            <th >Loan ID</th>
                                            <th>Loan Type</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in = "${loansetupList}" var="t" status="counter">
                                            <tr>
                                                %{--<td>${t.id}</td>--}%
                                                <td>${t.loan_id}</td>
                                                <td>${t.loan_type}</td>
                                                <td>
                                                    <g:form resource="${this.loansetup}" method="DELETE">
                                                        <g:link class="edit" action="edit" id="${t.loan_id} " resource="${this.loansetup}"><i class="fas fa-edit "></i></g:link>
                                                        |
                                                        <g:link class="delete" action="delete" id="${t.loan_id} " resource="${this.loansetup}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt text-danger"></i></g:link>
                                                    %{--<input class="delete" type="submit"  value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                                                    </g:form>
                                                </td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>
                                </g:if>

                                <g:else>
                                    <div class="blank">
                                        <h1>No data to show!</h1>
                                        <div class="newbutton">
                                            <g:link class="create" action="create"><g:message code="Create new Loan Setup" args="[entityName]" /></g:link>
                                        </div>
                                    </div>
                                </g:else>
                            </div>
                        </div>
                    </div>

                </div>
            </div>




    %{--<div class="content-wrapper">--}%
        %{--<section class="content">--}%
            %{--<div class="container-fluid">--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-6">--}%
                        %{--<div class="card">--}%
                            %{--<div class="card-header bg-gradient-secondary theader">--}%
                                %{--<h2>Loan Setup List</h2>--}%
                                %{--<span class="float-right down">--}%
                                    %{--<div class="nav-item dropdown">--}%
                                        %{--<a class="nav-link text-white" data-toggle="dropdown" href="#">--}%
                                            %{--<h3><i class="fas fa-sliders-h"></i></h3>--}%
                                        %{--</a>--}%
                                        %{--<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">--}%
                                            %{--<div class="dropdown-item">--}%
                                                %{--<g:link action="create" controller="loansetup" class=" text-secondary">--}%
                                                    %{--<h5><i class="fas fa-plus-square"></i> Create new Loan Setup</h5>--}%
                                                %{--</g:link>--}%
                                            %{--</div>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                %{--</span>--}%
                            %{--</div>--}%
                            %{--<div class="card-body">--}%
                                %{--<g:if test="${loansetupList}">--}%

                                    %{--<table id="example1" class="table table-striped table-bordered" style="width:100%">--}%
                                        %{--<thead class="bg-gradient-secondary">--}%
                                        %{--<tr >--}%
                                            %{--<th >Loan ID</th>--}%
                                            %{--<th>Loan Type</th>--}%
                                            %{--<th>Actions</th>--}%
                                        %{--</tr>--}%
                                        %{--</thead>--}%
                                        %{--<tbody>--}%
                                        %{--<g:each in = "${loansetupList}" var="t" status="counter">--}%
                                            %{--<tr>--}%
                                                %{--<td>${t.loan_id}</td>--}%
                                                %{--<td>${t.loan_type}</td>--}%
                                                %{--<td>--}%
                                                    %{--<g:form resource="${this.loansetup}" method="DELETE">--}%
                                                        %{--<g:link class="edit" action="edit" id="${t.id} " resource="${this.loansetup}"><i class="fas fa-edit"></i></g:link>--}%
                                                        %{--|--}%
                                                        %{--<g:link class="delete" action="delete" id="${t.id} " resource="${this.loansetup}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt"></i></g:link>--}%
                                                    %{--<input class="delete" type="submit"  value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                                                    %{--</g:form>--}%
                                                %{--</td>--}%
                                            %{--</tr>--}%
                                        %{--</g:each>--}%
                                        %{--</tbody>--}%
                                    %{--</table>--}%
                                %{--</g:if>--}%

                                %{--<g:else>--}%
                                    %{--<div class="blank">--}%
                                        %{--<h1>No data to show!</h1>--}%
                                        %{--<div class="newbutton">--}%
                                            %{--<g:link class="create" action="create"><g:message code="Create new Loan Setup" args="[entityName]" /></g:link>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                %{--</g:else>--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</section>--}%
    %{--</div>--}%
    </body>
</html>