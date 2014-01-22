require 'spec_helper'

describe "User Pages" do

	subject {pages}

describe "profile page" do
	let(:user) { FactoryGirl.create(:user)}
	before { visit user_page(user)}

	it { should have_content(user.name) }
	it { should have_title(user.name) }
end

  describe "signup page" do
  	before {visit signup_path}

  	it {should have_content ('Sign up')}
  	it {should have_title (full_title ('Sign up')) }
  end
end


