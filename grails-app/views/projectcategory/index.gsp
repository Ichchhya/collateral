<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'projectcategory.label', default: 'Projectcategory')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<a href="#list-projectcategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%
        %{--<div id="list-projectcategory" class="content scaffold-list" role="main">--}%
            %{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
            %{--<g:if test="${flash.message}">--}%
                %{--<div class="message" role="status">${flash.message}</div>--}%
            %{--</g:if>--}%
            %{--<f:table collection="${projectcategoryList}" />--}%

            %{--<div class="pagination">--}%
                %{--<g:paginate total="${projectcategoryCount ?: 0}" />--}%
            %{--</div>--}%
        %{--</div>--}%


    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header bg-gradient-success theader">
                                <h2>Create Project Category </h2>
                            </div>
                            <g:form resource="${this.projectcategory}" method="POST" controller="projectcategory" action="create1">
                                <div class="form-group">
                                <div class="card-body">

                                <div class="form-group">
                                    <label for="project_category_id">Project Category ID</label>
                                    <input type="text" name="project_category_id" class="form-control" id="project_category_id" placeholder="Enter the Project Category Id">
                                </div>
                                <div class="form-group">
                                    <label for="project_category"> Project Category</label>
                                    <input type="text" name="project_category" class="form-control" id="project_category" placeholder="Enter the Project Category">
                                </div>

                                <g:submitButton name="index" action="create1" class="save btn bg-gradient-success createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </g:form>
                        </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header bg-gradient-success theader">
                                <h2>Project Categories</h2>
                                %{--<span class="float-right down">--}%
                                    %{--<div class="nav-item dropdown">--}%
                                        %{--<a class="nav-link text-white" data-toggle="dropdown" href="#">--}%
                                            %{--<h3><i class="fas fa-sliders-h"></i></h3>--}%
                                        %{--</a>--}%
                                        %{--<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">--}%
                                            %{--<div class="dropdown-item">--}%
                                                %{--<g:link action="create" controller="projectcategory" class=" text-pink">--}%
                                                    %{--<h5><i class="fas fa-plus-square"></i> Create new Project Category</h5>--}%
                                                %{--</g:link>--}%
                                            %{--</div>--}%
                                        %{--</div>--}%
                                    %{--</div>--}%
                                %{--</span>--}%
                            </div>
                            <div class="card-body">
                                <g:if test="${projectcategoryList}">

                                    <table id="example1" class="table table-striped table-bordered" style="width:100%">
                                        <thead class="bg-gradient-success">
                                        <tr >
                                            %{--<th>ID</th>--}%
                                            <th >Project Category ID</th>
                                            <th>Project Category</th>
                                            <th>Actions</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in = "${projectcategoryList}" var="t" status="counter">
                                            <tr>
                                                %{--<td>${t.id}</td>--}%
                                                <td>${t.project_category_id}</td>
                                                <td>${t.project_category}</td>
                                                <td>
                                                    <g:form resource="${this.projectcategory}" method="DELETE">
                                                        <g:link class="edit" action="edit" id="${t.project_category_id} " resource="${this.projectcategory}"><i class="fas fa-edit"></i></g:link>
                                                        |
                                                        <g:link class="delete" action="delete" id="${t.project_category_id} " resource="${this.projectcategory}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> <i class="fas fa-trash-alt text-danger"></i></g:link>
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
                                            <g:link class="create" action="create"><g:message code="Create new Project Category" args="[entityName]" /></g:link>
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