package collateral

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CollateralServiceSpec extends Specification {

    CollateralService collateralService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Collateral(...).save(flush: true, failOnError: true)
        //new Collateral(...).save(flush: true, failOnError: true)
        //Collateral collateral = new Collateral(...).save(flush: true, failOnError: true)
        //new Collateral(...).save(flush: true, failOnError: true)
        //new Collateral(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //collateral.id
    }

    void "test get"() {
        setupData()

        expect:
        collateralService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Collateral> collateralList = collateralService.list(max: 2, offset: 2)

        then:
        collateralList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        collateralService.count() == 5
    }

    void "test delete"() {
        Long collateralId = setupData()

        expect:
        collateralService.count() == 5

        when:
        collateralService.delete(collateralId)
        sessionFactory.currentSession.flush()

        then:
        collateralService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Collateral collateral = new Collateral()
        collateralService.save(collateral)

        then:
        collateral.id != null
    }
}
