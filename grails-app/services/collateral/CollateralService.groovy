package collateral

import grails.gorm.services.Service

@Service(Collateral)
interface CollateralService {

    Collateral get(Serializable id)

    List<Collateral> list(Map args)

    Long count()

    void delete(Serializable id)

    Collateral save(Collateral collateral)

}