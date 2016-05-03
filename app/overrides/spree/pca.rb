Deface::Override.new(
  virtual_path: 'spree/checkout/_address',
  name:         'Add pca js script in head',
  insert_bottom:   "[data-hook='billing_fieldset_wrapper']",
  partial:  'spree/shared/pca_js_tag'
)
