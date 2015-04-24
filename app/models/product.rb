class Product < ActiveRecord::Base
  belongs_to :category

  def category_name
  	category.try(:name)
  end
  def category_name=(name)
  	self.category = Category.where(name: name).first_or_create if name.present?
  end
end
