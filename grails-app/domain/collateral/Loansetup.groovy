package collateral

class Loansetup {
//    static mapping = {
//        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
//                params: [sequence_name: 'loansetup_seq', initial_value: 1])
//    }
    //    Integer id

    static mapping = {
        id name:'loan_id'
        id(generator:'assigned')
    }


    Integer loan_id
    static hasMany = [projects: Project]
    String loan_type

    static constraints = {
        loan_id nullable: false, unique: true
        loan_type nullable: false
    }
}
