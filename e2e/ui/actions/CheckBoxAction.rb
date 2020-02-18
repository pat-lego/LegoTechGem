require_relative "../../../lib/ui/actions/Action"
require_relative "../../../lib/ui/enums/FieldType"
require_relative "../../../lib/ui/enums/Identifier"

class CheckBoxAction < LegoTechSelenium::Action
  def initialize(driver)
    super({
      :fieldtype => LegoTechSelenium::FieldType::CHECK_BOX,
      :identifier => LegoTechSelenium::Identifier::ID,
      :fieldname => "vehicle1",
    }, driver)
  end
end
