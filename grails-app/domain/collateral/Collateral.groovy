package collateral

class Collateral {
//    static hasMany = [projects: Project]
//
//    static mapping = {
////        id generator: 'CID'
//        projects joinTable: [name: 'collateral',
//                             column: 'ID',
//                             key: 'CID']
//    }
 //for generating id from desired initial value
    static mapping = {
        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
                params: [sequence_name: 'collateral_seq', initial_value: 1])
    }

    Integer id
    Integer project_id
    String collateral_english_description
    Integer collateral_code
    String collateral_address
    Date registeration_date
    Date buy_date
    Date valid_until

    static constraints = {
//        blank is for required column in user's field whereas nullable is for database
        project_id nullable: false
        collateral_english_description nullable: true, maxSize: 200
        collateral_code blank:false , maxSize:10
        collateral_address blank:false , maxSize: 50
        registeration_date nullable: false
        buy_date nullable: false
        valid_until nullable: false

    }
}
