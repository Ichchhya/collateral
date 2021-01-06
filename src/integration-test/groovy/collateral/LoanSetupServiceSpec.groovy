package collateral

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class LoanSetupServiceSpec extends Specification {

    LoanSetupService loanSetupService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new LoanSetup(...).save(flush: true, failOnError: true)
        //new LoanSetup(...).save(flush: true, failOnError: true)
        //LoanSetup loanSetup = new LoanSetup(...).save(flush: true, failOnError: true)
        //new LoanSetup(...).save(flush: true, failOnError: true)
        //new LoanSetup(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //loanSetup.id
    }

    void "test get"() {
        setupData()

        expect:
        loanSetupService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<LoanSetup> loanSetupList = loanSetupService.list(max: 2, offset: 2)

        then:
        loanSetupList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        loanSetupService.count() == 5
    }

    void "test delete"() {
        Long loanSetupId = setupData()

        expect:
        loanSetupService.count() == 5

        when:
        loanSetupService.delete(loanSetupId)
        sessionFactory.currentSession.flush()

        then:
        loanSetupService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        LoanSetup loanSetup = new LoanSetup()
        loanSetupService.save(loanSetup)

        then:
        loanSetup.id != null
    }
}
