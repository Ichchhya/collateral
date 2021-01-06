package collateral

class Loan {
    static mapping = {
        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
                params: [sequence_name: 'loan_seq', initial_value: 1])
    }

    Integer id
    Integer loan_number
    Integer interest_rate
    Integer penal_interest_rate
    Integer approved_amount
    Integer project_code

    static constraints = {
        loan_number nullable: false
        interest_rate blank:false
        penal_interest_rate blank:false
        approved_amount nullable: false
        project_code nullable: false
    }
}
