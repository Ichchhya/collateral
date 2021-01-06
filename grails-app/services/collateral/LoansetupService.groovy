package collateral

import grails.gorm.services.Service

@Service(Loansetup)
interface LoansetupService {

    Loansetup get(Serializable id)

    List<Loansetup> list(Map args)

    Long count()

    void delete(Serializable id)

    Loansetup save(Loansetup loansetup)

}