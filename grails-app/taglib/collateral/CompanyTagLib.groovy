package collateral

class CompanyTagLib {
    UtilsService utilsService
    static defaultEncodeAs = [taglib: 'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "ct"
    static encodeAsForTags = [
            comp: [taglib: 'utf-8'],proj: [taglib: 'utf-8'] ,loansetup: [taglib: 'utf-8'],projectcategory: [taglib: 'utf-8']]


    def comp = { attrs, body ->

        out << "<select id=\"${attrs.name}\" name=\"${attrs.name}\" class=\"${attrs.class}\">"
        out << "<option value=''>Choose Company</option>"

        def activeCompany = utilsService.getCompanyList()
        def tempValue = attrs.value
        activeCompany.each { d ->

            out << "<option value=\"${d[0]}\""
            if (tempValue.equals(String.valueOf(d[0]))) {
                out << "selected=\"selected\""
            }

            out << ">${d[1]}</option>"
        }
        out << "</select>"
    }


    def proj = { attrs, body ->

        out << "<select id=\"${attrs.name}\" name=\"${attrs.name}\" class=\"${attrs.class}\">"
        out << "<option value=''>Choose Project</option>"

        def activeProject = utilsService.getProjectList()
        def tempValue = attrs.value
        activeProject.each { d ->

            out << "<option value=\"${d[0]}\""
            if (tempValue.equals(String.valueOf(d[0]))) {
                out << "selected=\"selected\""
            }

            out << ">${d[1]}</option>"
        }
        out << "</select>"
    }


    def loansetup = { attrs, body ->

        out << "<select id=\"${attrs.name}\" name=\"${attrs.name}\" class=\"${attrs.class}\">"
        out << "<option value=''>Choose Loan Type</option>"

        def activeProject = utilsService.getLoansetupList()
        def tempValue = attrs.value
        activeProject.each { d ->

            out << "<option value=\"${d[0]}\""
            if (tempValue.equals(String.valueOf(d[0]))) {
                out << "selected=\"selected\""
            }

            out << ">${d[1]}</option>"
        }
        out << "</select>"
    }

    def projectcategory = { attrs, body ->

        out << "<select id=\"${attrs.name}\" name=\"${attrs.name}\" class=\"${attrs.class}\">"
        out << "<option value=''>Choose Project Category</option>"

        def activeProject = utilsService.getProjectcategoryList()
        def tempValue = attrs.value
        activeProject.each { d ->

            out << "<option value=\"${d[0]}\""
            if (tempValue.equals(String.valueOf(d[0]))) {
                out << "selected=\"selected\""
            }

            out << ">${d[1]}</option>"
        }
        out << "</select>"
    }
}
