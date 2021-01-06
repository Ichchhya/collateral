package collateral

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ProjectController {

    ProjectService projectService
    UtilsService utilsService
    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond projectService.list(), model:[projectCount: projectService.count(), projList: utilsService.getProjectDetails()]
    }

    def show(Long id) {
//        respond projectService.get(id)
        redirect (action: "index")
    }

    def create() {
        respond new Project(params)
    }

    def save(Project project) {
        if (project == null) {
            notFound()
            return
        }

        try {
            projectService.save(project)
            utilsService.joinCidPcode(project.company_id,project.id)
            utilsService.joinPcodeLoansetup(project.loan_id,project.id)
            utilsService.joinPcodeProjectcategory(project.project_category_id,project.id)
        } catch (ValidationException e) {
            respond project.errors, view:'create'
            return
        }
        redirect(action: "index")
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), project.id])
//                redirect project
//            }
//            '*' { respond project, [status: CREATED] }
//        }
    }

    def edit(Long id) {
        respond projectService.get(id)
    }

    def update(Project project) {
        if (project == null) {
            notFound()
            return
        }


        try {
            projectService.save(project)
        } catch (ValidationException e) {
            respond project.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'project.label', default: 'Project'), project.id])
                redirect project
            }
            '*'{ respond project, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
//            notFound()
//            return
            id=params(id)
        }

        projectService.delete(id)

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'project.label', default: 'Project'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
        redirect(action: "index")
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
