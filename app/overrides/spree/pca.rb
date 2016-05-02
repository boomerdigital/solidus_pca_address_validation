Deface::Override.new(
  virtual_path: 'spree/layouts/spree_application',
  name:         'Add pca js script in head',
  insert_bottom:   "[data-hook='inside_head']",
  partial:  'spree/shared/pca_js_tag'
)
