require_relative "../../../lib/ui/actions/Action"
require_relative "../../../lib/ui/enums/FieldType"
require_relative "../../../lib/ui/enums/Identifier"

class RadioButtonAction < LegoTechSelenium::Action
  def initialize(driver)
    super({
      :fieldtype => LegoTechSelenium::FieldType::RADIO_BUTTON,
      :identifier => LegoTechSelenium::Identifier::ID,
      :fieldname => "male",
    }, driver)
  end
end
