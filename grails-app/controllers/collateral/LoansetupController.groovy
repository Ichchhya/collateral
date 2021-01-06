package collateral

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LoansetupController {

    LoansetupService loansetupService

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond new Loansetup(params)
        respond loansetupService.list(), model:[loansetupCount: loansetupService.count()]
    }

    def show(Long id) {
//        respond loansetupService.get(id)
        redirect(action: "index")
    }

    def create() {
        respond new Loansetup(params)
    }

    def create1() {
//        println("herere ")
//        println(params as JSON)
        def loanSetup=new Loansetup(loan_id: Integer.parseInt(params.loan_id),loan_type: params.loan_type)
        loanSetup.save(flush:true)
//        println(loanSetup)
        redirect(action: "index")
    }

    def save(Loansetup loansetup) {
        if (loansetup == null) {
            notFound()
            return
        }

        try {
            loansetupService.save(loansetup)
        } catch (ValidationException e) {
            respond loansetup.errors, view:'create'
            return
        }
//        redirect(action: "index")

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'loansetup.label', default: 'Loansetup'), loansetup.id])
                redirect loansetup
            }
            '*' { respond loansetup, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond loansetupService.get(id)
        print(id)
    }

    def update(Loansetup loansetup) {
        print(loansetup)
        if (loansetup == null) {
//            notFound()
//            return
//            loansetup.loan_id=params(loansetup.loan_id)
//            loansetup.loan_id=params.loansetup_loan_id
        }

        try {
            loansetupService.save(loansetup)
        } catch (ValidationException e) {
            respond loansetup.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'loansetup.label', default: 'Loansetup'), loansetup.id])
                redirect loansetup
            }
            '*'{ respond loansetup, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
//            notFound()
//            return
            id= params.id
        }

        loansetupService.delete(id)
        redirect(action: "index")

//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'loansetup.label', default: 'Loansetup'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'loansetup.label', default: 'Loansetup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
