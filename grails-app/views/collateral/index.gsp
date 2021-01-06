<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'collateral.label', default: 'Collateral')}" />
        <title>Collateral Profile</title>

        <asset:stylesheet src="formdesign.css"/>
        <asset:stylesheet src="../images/img/images/nodatafound.png"/>

        <link rel="stylesheet" href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    </head>
    <body>
        %{--<a href="#list-collateral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="list-collateral" class="content scaffold-list" role="main">--}%
    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-gradient-olive theader">
                                <h2>Collateral List</h2>
                                    <span class="float-right down">
                                        <div class="nav-item dropdown">
                                            <a class="nav-link text-white" data-toggle="dropdown" href="#">
                                                <h3><i class="fas fa-sliders-h"></i></h3>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                                <div class="dropdown-item">
                                                    <g:link action="create" controller="collateral" class=" text-olive">
                                                   <h5><i class="fas fa-plus-square"></i> Create new collateral</h5>
                                                    </g:link>
                                                </div>
                                            </div>
                                        </div>
                                     </span>
                            </div>
                    <div class="card-body">
                        <g:if test="${collateralList}">
                    %{--<g:if test="${flash.message}">--}%
                        %{--<div class="message" role="status">${flash.message}</div>--}%
                    %{--</g:if>--}%
                            <table id="example1" class="table table-striped table-bordered" style="width:100%">
                                <thead class="bg-gradient-olive">
                                    <tr >
                                        <th >Collateral ID</th>
                                        <th>Project Name</th>
                                        <th>Collateral English Description</th>
                                        <th>Collateral Code</th>
                                        <th>Collateral Address</th>
                                        <th>Registeration Date</th>
                                        <th>Buy Date</th>
                                        <th>Valid Until</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <g:each in = "${colList}" var="t" status="counter">
                                    <tr>
                                        <td>${t.id}</td>
                                        <td>${t.project_name}</td>
                                        <td>${t.collateral_english_description}</td>
                                        <td>${t.collateral_code}</td>
                                        <td>${t.collateral_address}</td>
                                        <td>${t.registeration_date}</td>
                                        <td>${t.buy_date}</td>
                                        <td>${t.valid_until}</td>
                                        <td>
                                        <g:form resource="${this.collateral}" method="DELETE">
                                            <g:link class="edit" action="edit" id="${t.id} " resource="${this.collateral}"><i class="fas fa-edit"></i></g:link>
                                            |
                                            <g:link class="delete" action="delete" id="${t.id} " resource="${this.collateral}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt text-danger"></i></g:link>
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
                                        <g:link class="create" action="create"><g:message code="Create new collateral" args="[entityName]" /></g:link>
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
        %{--</div>--}%

    <asset:javascript src="adminlte.min.js"/>
    %{--<asset:javascript src="demo.js">--}%

    <script src="/assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src=/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="/assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="/assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>



    </body>
</html>