package collateral

import grails.gorm.services.Service

@Service(Projectcategory)
interface ProjectcategoryService {

    Projectcategory get(Serializable id)

    List<Projectcategory> list(Map args)

    Long count()

    void delete(Serializable id)

    Projectcategory save(Projectcategory projectcategory)

}