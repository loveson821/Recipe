ActiveAdmin.register Manual do
  /
  show do |ad|
    attributes_table do
      row :image do
        image_tag(ad.image.url)
      end
    end
    active_admin_comments
  end
  
  index :as => :grid do |product|
    div do
      a :href => admin_manual_path(product) do
        image_tag(product.image_url(:thumb))
      end
    end
    a truncate(product.title), :href => admin_manual_path(product)
  end
  /
  
  form do |f|
    f.inputs "Details" do
      f.input :user
      f.input :categories, as: :check_boxes, collection: Category.all
      f.input :title
      f.input :body
      f.input :publish_date
      f.input :cookTime
      f.input :quantity
      f.input :kcal
      f.input :difficulty
      f.input :image
      f.inputs "Steps" do
        f.has_many :steps , :header=>'' do |step|
          step.input :text
          step.input :image
          #if step.object.id
          #  step.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
          #end
        end
      end
      f.inputs "materials" do
        f.has_many :materials, :header=>'' do |m|
          m.input :name
          m.input :amount
        end
      end
    end
    f.actions
  end
end
