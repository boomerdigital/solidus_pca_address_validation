module SolidusPcaAddressValidation
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/solidus_pca_address_validation\n"
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/solidus_pca_address_validation\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/solidus_pca_address_validation\n", :before => /\*\//, :verbose => true
        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/solidus_pca_address_validation\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
