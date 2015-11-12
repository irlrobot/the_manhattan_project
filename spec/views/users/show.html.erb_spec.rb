require 'rails_helper'

RSpec.describe 'users/show', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
                            username: 'Username',
                            password_digest: 'Password Digest'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password Digest/)
  end
end
