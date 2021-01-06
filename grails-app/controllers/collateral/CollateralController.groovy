package collateral

import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*


class CollateralController {

    CollateralService collateralService
    UtilsService utilsService

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
//        render collateralService.list(params) as JSON
        respond collateralService.list(), model:[collateralCount: collateralService.count(), colList: utilsService.getCollateralDetails()]
    }

    def show(Long id) {
//        respond collateralService.get(id)
        redirect (action: "index")
    }

    def create() {
        respond new Collateral(params)
    }

    def save(Collateral collateral) {
        if (collateral == null) {
            notFound()
            return
        }

        try {
            collateralService.save(collateral)
            utilsService.joinColidPcode(collateral.project_id,collateral.id)
        } catch (ValidationException e) {
            respond collateral.errors, view:'create'
            return
        }
        redirect(action: "index")


//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'collateral.label', default: 'Collateral'), collateral.id])
//                redirect collateral
//            }
//            '*' { respond collateral, [status: CREATED] }
//        }
    }

    def edit(Long id) {
        respond collateralService.get(id)
    }

    def update(Collateral collateral) {
        print(collateral)
        if (collateral == null) {
            notFound()
            return
        }

        try {
            collateralService.save(collateral)
        } catch (ValidationException e) {
            respond collateral.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'collateral.label', default: 'Collateral'), collateral.id])
                redirect collateral
            }
            '*'{ respond collateral, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            id=params(id)
//            notFound()
//            return
//            redirect action: "index", method: "GET"



        }

        collateralService.delete(id)

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'collateral.label', default: 'Collateral'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
        redirect (action: "index")
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'collateral.label', default: 'Collateral'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
