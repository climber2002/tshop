Spree::StoreController.class_eval do
  
  before_action :load_taxonomies

  private

  def load_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
  
end