package collateral

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ProjectcategoryController {

    ProjectcategoryService projectcategoryService

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond new Projectcategory(params)
        respond projectcategoryService.list(), model:[projectcategoryCount: projectcategoryService.count()]
    }

    def show(Long id) {
//        respond projectcategoryService.get(id)
        redirect(action: "index")
    }

    def create() {
        respond new Projectcategory(params)
    }

    def create1() {
//        println("herere ")
//        println(params as JSON)
//        println("---------------------------------")
        def projectCategory=new Projectcategory(project_category_id: Integer.parseInt(params.project_category_id),project_category: params.project_category)
//        println("============================")
        projectCategory.save(flush:true)
//        println(projectCategory)
        redirect(action: "index")
    }

    def save(Projectcategory projectcategory) {
        if (projectcategory == null) {
            notFound()
            return
        }

        try {
            projectcategoryService.save(projectcategory)
        } catch (ValidationException e) {
            respond projectcategory.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projectcategory.label', default: 'Projectcategory'), projectcategory.id])
                redirect projectcategory
            }
            '*' { respond projectcategory, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond projectcategoryService.get(id)
    }

    def update(Projectcategory projectcategory) {
        if (projectcategory == null) {
            notFound()
            return
        }

        try {
            projectcategoryService.save(projectcategory)
        } catch (ValidationException e) {
            respond projectcategory.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'projectcategory.label', default: 'Projectcategory'), projectcategory.id])
                redirect projectcategory
            }
            '*'{ respond projectcategory, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            id=params.id
//            notFound()
//            return
        }

        projectcategoryService.delete(id)
        redirect(action: "index")

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'projectcategory.label', default: 'Projectcategory'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectcategory.label', default: 'Projectcategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
