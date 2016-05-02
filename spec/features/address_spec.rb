require 'spec_helper'

describe "Address", type: :feature do

  let!(:product) { create(:product, :name => "RoR Mug") }
  let!(:order) { create(:order_with_totals, :state => 'cart') }

  stub_authorization!

  before do
    visit spree.root_path

    click_link "RoR Mug"
    click_button "add-to-cart-button"
    click_button "Checkout"
    fill_in "order_email", with: 'test@testing.com'
    click_button "Continue"
  end

  # Currently unable to test further on PCA autocomplete since capybara has limited methods that are not triggering PCA Autocomplete to respond.

  context "PCA", :js => true, :focus => true do
    it 'has pca on page' do
      expect(page).to have_selector('.pca')
    end
  end
end
