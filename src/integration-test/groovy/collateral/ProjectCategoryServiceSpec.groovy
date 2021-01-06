package collateral

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ProjectCategoryServiceSpec extends Specification {

    ProjectCategoryService projectCategoryService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ProjectCategory(...).save(flush: true, failOnError: true)
        //new ProjectCategory(...).save(flush: true, failOnError: true)
        //ProjectCategory projectCategory = new ProjectCategory(...).save(flush: true, failOnError: true)
        //new ProjectCategory(...).save(flush: true, failOnError: true)
        //new ProjectCategory(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //projectCategory.id
    }

    void "test get"() {
        setupData()

        expect:
        projectCategoryService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ProjectCategory> projectCategoryList = projectCategoryService.list(max: 2, offset: 2)

        then:
        projectCategoryList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        projectCategoryService.count() == 5
    }

    void "test delete"() {
        Long projectCategoryId = setupData()

        expect:
        projectCategoryService.count() == 5

        when:
        projectCategoryService.delete(projectCategoryId)
        sessionFactory.currentSession.flush()

        then:
        projectCategoryService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ProjectCategory projectCategory = new ProjectCategory()
        projectCategoryService.save(projectCategory)

        then:
        projectCategory.id != null
    }
}
