ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :author, :title, :announce, :body, :status, tags: [:name]
  #
  # or
  #
  # permit_params do
  #   permitted = []
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs do
      f.input :status
      f.input :title
      f.input :announce
      f.input :body
      f.has_many :tags, new_record: true do |t|
        t.input :name
      end
    end
    f.actions
  end

end
