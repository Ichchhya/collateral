<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#list-loan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="list-loan" class="content scaffold-list" role="main">--}%
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:table collection="${loanList}" />--}%

            %{--<div class="pagination">--}%
                %{--<g:paginate total="${loanCount ?: 0}" />--}%
            %{--</div>--}%
        %{--</div>--}%


    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-green theader">
                                <h2>Loan List</h2>
                                <span class="float-right down">
                                    <div class="nav-item dropdown">
                                        <a class="nav-link text-white" data-toggle="dropdown" href="#">
                                            <h3><i class="fas fa-sliders-h"></i></h3>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                            <div class="dropdown-item">
                                                <g:link action="create" controller="loan" class=" text-green">
                                                    <h5><i class="fas fa-plus-square"></i> Create new loan</h5>
                                                </g:link>
                                            </div>
                                        </div>
                                    </div>
                                </span>
                            </div>
                            <div class="card-body">
                                <g:if test="${loanList}">

                                    <table id="example1" class="table table-striped table-bordered" style="width:100%">
                                        <thead class="bg-gradient-green">
                                        <tr >
                                            <th>Loan ID</th>
                                            <th >Loan Number</th>
                                            <th>Interest Rate</th>
                                            <th>Penal Interest Rate</th>
                                            <th>Approved Amount</th>
                                            <th>Project Code</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in = "${loanList}" var="t" status="counter">
                                            <tr>
                                                <td>${t.id}</td>
                                                <td>${t.loan_number}</td>
                                                <td>${t.interest_rate}</td>
                                                <td>${t.penal_interest_rate}</td>
                                                <td>${t.approved_amount}</td>
                                                <td>${t.project_code}</td>
                                                <td>
                                                    <g:form resource="${this.loan}" method="DELETE">
                                                        <g:link class="edit" action="edit" id="${t.id} " resource="${this.loan}"><i class="fas fa-edit"></i></g:link>
                                                        |
                                                        <g:link class="delete" action="delete" id="${t.id} " resource="${this.loan}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">  <i class="fas fa-trash-alt text-danger"></i></g:link>
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
                                            <g:link class="create" action="create"><g:message code="Create new loan" args="[entityName]" /></g:link>
                                        </div>
                                    </div>
                                </g:else>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    </body>
</html>