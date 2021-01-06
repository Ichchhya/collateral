<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />

        <asset:stylesheet src="formdesign.css"/>
        <asset:stylesheet src="../images/img/images/nodatafound.png"/>

        <link rel="stylesheet" href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="list-project" class="content scaffold-list" role="main">--}%
    <div class="content-wrapper">
        <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                <div class="card-header bg-gradient-lightblue theader">
                    <h2>Project List</h2>
                    <span class="float-right down">
                        <div class="nav-item dropdown">
                            <a class="nav-link text-white" data-toggle="dropdown" href="#">
                                <h3><i class="fas fa-sliders-h"></i></h3>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right ">
                                <div  class="dropdown-item ">
                                    <g:link action="create" controller="project" class=" text-lightblue">
                                    <h5 "><i class="fas fa-plus-square"></i> Create new project</h5>
                                    </g:link>
                                </div>
                            </div>
                        </div>
                    </span>

                            %{--<i class="fas fa-list listicon text-white"></i>--}%

                </div>
                    <div class="card-body">
                    <g:if test="${projectList}">
                    %{--<h1 class="heading bg-succcess" ><g:message code="default.list.label" args="[entityName]" /></h1>--}%
                    %{--<g:if test="${flash.message}">--}%
                        %{--<div class="message" role="status">${flash.message}</div>--}%
                    %{--</g:if>--}%
                        <table id="example1" class="table table-striped table-bordered" style="width:100%">
                            <thead class="bg-gradient-lightblue">
                                <tr>
                                    <th>Project ID</th>
                                    <th>Company Name</th>
                                    <th>Loan Type</th>
                                    <th>Project Category</th>
                                    <th>Project Name</th>
                                    <th>Project Address</th>
                                    <th>Project Date</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            <g:each in = "${projList}" var="t" status="counter">
                                <tr>
                                    <td>${t.id}</td>
                                    <td>${t.company_name}</td>
                                    <td>${t.loan_type}</td>
                                    <td>${t.project_category}</td>
                                    <td>${t.project_name}</td>
                                    <td>${t.project_address}</td>
                                    <td>${t.project_date}</td>
                                    <td>
                                        <g:form resource="${this.project}" method="DELETE">
                                            <g:link class="edit" action="edit" id="${t.id} " resource="${this.project}"><i class="fas fa-edit"></i></g:link>
                                            |
                                            <g:link class="delete" action="delete" id="${t.id} " resource="${this.project}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt text-danger"></i></g:link>
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
                        <div class="newbutton"> <g:link class="create" action="create"><g:message code="Create new project" args="[entityName]" /></g:link></div>
                    </div>
                    </g:else>
                </div>
            </div>
                </div>
        </section>
        </div>


    <asset:javascript src="adminlte.min.js"/>
    <!-- jQuery -->
    %{--<script src="/assets/plugins/jquery/jquery.min.js"></script>--}%
    <!-- Bootstrap 4 -->
    %{--<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>--}%
    <!-- DataTables -->
    %{--<script src="/assets/plugins/datatables/jquery.dataTables.min.js"></script>--}%
    %{--<script src="/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>--}%
    %{--<script src="/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>--}%
    %{--<script src="/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>--}%
    <!-- AdminLTE App -->
    %{--<script src="/assets/dist/js/adminlte.min.js"></script>--}%
    %{--<!-- AdminLTE for demo purposes -->--}%
    %{--<script src="/assets/dist/js/demo.js"></script>--}%



    </body>
</html>