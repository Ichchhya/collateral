<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

        <asset:stylesheet src="formdesign.css"/>
        <asset:stylesheet src="../images/img/images/nodatafound.png"/>
    </head>
    <body>
        %{--<a href="#list-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        <div id="list-company" class="content scaffold-list" role="main">

            <div class="content-wrapper">

                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">

                <div class="card-header bg-gradient-info theader">
                    <h2>Company List

                            %{--<i class="fas fa-list listicon text-white"></i>--}%

                    </h2>
                    <span class="float-right down">
                        <div class="nav-item dropdown">
                            <a class="nav-link text-white" data-toggle="dropdown" href="#">
                                <h3><i class="fas fa-sliders-h"></i></h3>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                <div class="dropdown-item">
                                    <g:link action="create" controller="company" >
                                    <h5><i class="fas fa-plus-square"></i> Create new company </h5>
                                    </g:link>
                                </div>
                            </div>
                        </div>
                    </span>
                </div>
                %{--<form role="form">--}%
                    <div class="card-body">


            <g:if test="${companyList}">
                %{--<h1 class="heading bg-succcess" ><g:message code="default.list.label" args="[entityName]" /></h1>--}%
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table id="example1" class="table table-striped table-bordered" style="width:100%">
                    <thead class="bg-gradient-info">
                    <tr>
                        <th>Company ID</th>
                        <th>Company Name</th>
                        <th>Company Address</th>
                        <th>PAN No.</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in = "${companyList}" var="t" status="counter">
                        <tr>
                            <td>${t.id}</td>
                            <td>${t.company_name}</td>
                            <td>${t.company_address}</td>
                            <td>${t.pan_no}</td>
                            <td>
                                <g:form resource="${this.company}" method="DELETE">
                                    <g:link class="edit" action="edit" id="${t.id} " resource="${this.company}"><i class="fas fa-edit"></i></g:link>
                                    |
                                    <g:link class="delete" action="delete" id="${t.id} " resource="${this.company}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt text-danger"></i></g:link>
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
                    <div class="newbutton"> <g:link class="create" action="create"><g:message code="Create new company" args="[entityName]" /></g:link></div>
                </div>
            </g:else>
                    </div>
            </div>

            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:table collection="${companyList}" />--}%
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>