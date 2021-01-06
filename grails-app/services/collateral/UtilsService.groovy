package collateral

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class UtilsService {

    def serviceMethod() {

    }
    def dataSource

    def getCompanyList() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'SELECT DISTINCT ID,COMPANY_NAME FROM SCOTT.COMPANY'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }

    def getProjectList() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'SELECT DISTINCT ID,PROJECT_NAME FROM SCOTT.PROJECT'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }


    def joinCidPcode(def cid,def project_code) {

        def sql = new Sql(dataSource)
        try {

            sql.executeUpdate("insert into SCOTT.COMPANY_PROJECT (COMPANY_PROJECTS_ID,PROJECT_ID ) values (?,?)",
                    [cid,project_code ])
            sql.commit()
            sql.close()
        } catch (Exception e) {
            log.error "Error in mapping " + e
            throw e
        }
    }


    def joinColidPcode(def project_id,def collateral_id) {

        def sql = new Sql(dataSource)
        try {

            sql.executeUpdate("insert into SCOTT.PROJECT_COLLATERAL (PROJECT_COLS_ID,COLLATERAL_ID ) values (?,?)",
                    [project_id,collateral_id ])
            sql.commit()
            sql.close()
        } catch (Exception e) {
            log.error "Error in mapping " + e
            throw e
        }
    }


    def getLoansetupList() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'SELECT DISTINCT LOAN_ID,LOAN_TYPE FROM SCOTT.LOANSETUP'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }

    def getProjectcategoryList() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'SELECT DISTINCT PROJECT_CATEGORY_ID,PROJECT_CATEGORY FROM SCOTT.PROJECTCATEGORY'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }


    def joinPcodeLoansetup(def loan_id,def project_id) {

        def sql = new Sql(dataSource)
        try {

            sql.executeUpdate("insert into SCOTT.LOANSETUP_PROJECT (LOANSETUP_PROJECTS_ID,PROJECT_ID ) values (?,?)",
                    [loan_id,project_id ])
            sql.commit()
            sql.close()
        } catch (Exception e) {
            log.error "Error in mapping " + e
            throw e
        }
    }


    def joinPcodeProjectcategory(def project_category_id,def project_id) {

        def sql = new Sql(dataSource)
        try {

            sql.executeUpdate("insert into SCOTT.PROJECTCATEGORY_PROJECT (PROJECTCATEGORY_PROJECTS_ID,PROJECT_ID ) values (?,?)",
                    [project_category_id , project_id])
            sql.commit()
            sql.close()
        } catch (Exception e) {
            log.error "Error in mapping " + e
            throw e
        }
    }


    def getProjectDetails() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'select p.id, c.company_name, l.loan_type, pc.project_category, p.project_name , p.project_address, to_char(p.project_date , \'YYYY-MM-DD\') "project_date" from COMPANY c , PROJECT p, LOANSETUP l, PROJECTCATEGORY pc where p.company_id= c.id'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }

    def getCollateralDetails() {
        def sql = new Sql(dataSource);
        try {
            String Query = 'select c.id, p.project_name, c.collateral_english_description, c.collateral_code, c.collateral_address, to_char(c.registeration_date , \'YYYY-MM-DD\') "registeration_date", to_char(c.buy_date , \'YYYY-MM-DD\') "buy_date" , to_char(c.valid_until , \'YYYY-MM-DD\') "valid_until" from PROJECT p, COLLATERAL c where c.project_id= p.id'
            def result = sql.rows(Query)
            return result
        } finally {
            sql.close()
        }
    }

}


