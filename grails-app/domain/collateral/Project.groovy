package collateral

class Project {

    static mapping = {
        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
                params: [sequence_name: 'project_seq', initial_value: 1])
    }

    Integer id
    static hasMany = [cols: Collateral]
    Integer company_id
    Integer loan_id
    Integer project_category_id
    String project_name
    String project_address
    Date project_date

    static constraints = {
//        blank is for required column in user's field whereas nullable is for database
        company_id nullable: false
        loan_id nullable: false
        project_category_id nullable: false
        project_name blank: false, maxSize: 20
        project_address blank:false , maxSize: 50
        project_date nullable: false
    }
}
