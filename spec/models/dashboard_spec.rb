require 'rails_helper'

RSpec.describe Dashboard, type: :model do

  before { @dashboard = create(:dashboard) }
  subject { @dashboard }

  it { should be_valid}
  it { should respond_to(:logotype) }
  it { should respond_to(:title) }
  it { should respond_to(:text_1) }
  it { should respond_to(:text_2) }
  it { should respond_to(:text_3) }
  it { should respond_to(:title_text_1) }
  it { should respond_to(:title_text_2) }
  it { should respond_to(:title_text_3) }
  it { should respond_to(:url_1) }
  it { should respond_to(:url_2) }
  it { should respond_to(:url_3) }

  describe "Validations" do
    it { should validate_presence_of(:logotype) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text_1) }
    it { should validate_presence_of(:text_2) }
    it { should validate_presence_of(:text_3) }
    it { should validate_presence_of(:title_text_1) }
    it { should validate_presence_of(:title_text_2) }
    it { should validate_presence_of(:title_text_3) }
    it { should validate_presence_of(:url_1) }
    it { should validate_presence_of(:url_2) }
    it { should validate_presence_of(:url_3) }
  end

end