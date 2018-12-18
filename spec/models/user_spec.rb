require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = create(:user) }
  subject { @user }

  it { should be_valid}
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:image) }

  describe "Validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

end