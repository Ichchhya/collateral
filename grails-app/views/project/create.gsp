<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

        %{--<asset:stylesheet src="formdesign.css"/>--}%
        %{--<asset:stylesheet src="../images/img/images/nodatafound.png"/>--}%
    </head>
    <body>
        %{--<a href="#create-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
        %{--<div class="nav" role="navigation">--}%
            %{--<ul>--}%
                %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
                %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
            %{--</ul>--}%
        %{--</div>--}%


            <div class="content-wrapper create">
                <div id="create-project" class="content scaffold-create" role="main">
                %{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <g:hasErrors bean="${this.project}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${this.project}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">

                                <div class="card-header bg-gradient-lightblue theader">
                                    <h2>Project Form </h2>
                                </div>
                                <div class="card-body">
                                    <g:form resource="${this.project}" method="POST">

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Project Name</label>
                                            <input type="text" name="project_name" class="form-control" id="exampleInputEmail1" placeholder="Enter project name">
                                        </div>

                                        <div class="form-group">
                                            <label for="cid">Select Company Name</label>
                                            <ct:comp name="company_id" class="form-control" id="cid"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="loan_id">Select Loan Type</label>
                                            <ct:loansetup name="loan_id" class="form-control" id="loan_id"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="project_category_id">Select Project Category</label>
                                            <ct:projectcategory name="project_category_id" class="form-control" id="project_category_id"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="paddress">Project Address</label>
                                            <input type="text" name="project_address" class="form-control" id="paddress" placeholder="Enter the project address">
                                        </div>
                                        <div class="form-group">
                                            <label for="project_date">Project Date</label>
                                            <g:datePicker name="project_date" precision="day"/>
                                        </div>

                                            <g:submitButton name="index" class="save btn bg-gradient-lightblue createbtn" value="${message(code: 'default.button.create.label', default: 'Create')}" />

                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
