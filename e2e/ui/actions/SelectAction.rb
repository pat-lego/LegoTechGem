require_relative "../../../lib/ui/actions/Action"
require_relative "../../../lib/ui/enums/FieldType"
require_relative "../../../lib/ui/enums/Identifier"

class SelectAction < LegoTechSelenium::Action
  def initialize(driver)
    super({
      :fieldtype => LegoTechSelenium::FieldType::DROPDOWN_LIST,
      :identifier => LegoTechSelenium::Identifier::NAME,
      :fieldname => "first_select",
      :value => "Option 1",
    }, driver)
  end
end
