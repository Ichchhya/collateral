package collateral

class Projectcategory {
//    static mapping = {
//        id(generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator',
//                params: [sequence_name: 'project_category_seq', initial_value: 1])
//    }
//
//    Integer id

    static mapping = {
        id name:'project_category_id'
        id(generator:'assigned')
    }
    static hasMany = [projects: Project]
    Integer project_category_id
    String project_category

    static constraints = {
        project_category_id nullable: false , unique: true
        project_category nullable: false
    }
}
