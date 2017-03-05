require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AddressBooksController, type: :controller do
  subject(:address_book) { build(:address_book) }

  describe 'GET #index' do
    it 'get 200 status' do
      get :index
      expect(response.status).to be(200)
    end

    it 'return json response' do
      get :index
      expect(response.content_type).to eq('application/json')
    end

    it 'get created address book' do
      dummy = create(:address_book)
      get :index
      emails = JSON.parse(response.body).map { |address| address['email'] }
      expect(emails).to include dummy['email']
    end
  end
end
