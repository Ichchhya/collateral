package collateral

class Company {

    static mapping = {
        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
                params: [sequence_name: 'company_seq', initial_value: 1])
    }

    Integer id
    static hasMany = [projects: Project]
    String company_name
    String company_address
    Integer pan_no

    static constraints = {
//        blank is for required column in user's field whereas nullable is for database
        company_name blank: false, maxSize: 20
        company_address blank:false , maxSize: 50
        pan_no nullable: false
    }
}
