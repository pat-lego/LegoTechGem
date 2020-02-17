require_relative "../../../lib/ui/actions/Action"
require_relative "../../../lib/ui/enums/FieldType"
require_relative "../../../lib/ui/enums/Identifier"

class ButtonAction < LegoTechSelenium::Action
  def initialize(driver)
    super({
      :fieldtype => LegoTechSelenium::FieldType::BUTTON,
      :identifier => LegoTechSelenium::Identifier::ID,
      :fieldname => "first_button",
    }, driver)
  end
end
