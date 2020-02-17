require_relative "../../../lib/ui/actions/Action"
require_relative "../../../lib/ui/enums/FieldType"
require_relative "../../../lib/ui/enums/Identifier"

class InputAction < LegoTechSelenium::Action
  def initialize(driver)
    super({
      :fieldtype => LegoTechSelenium::FieldType::INPUT,
      :identifier => LegoTechSelenium::Identifier::NAME,
      :fieldname => "first_input",
      :value => "My val",
    }, driver)
  end
end
