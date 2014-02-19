ActiveAdmin.register Post do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do 
    column :id, :sortable => :id
    column :title, :sortable => :title
    column "Created date", :created_at, :sortable => :created_at
    default_actions
  end

  member_action :create do
     user_params= params.require(:post).permit(:title,:body)
     post =Post.new(user_params)
     post.save
     redirect_to :back
   end

   member_action :update do 
    post = Post.find_by(params[:id])
    post.update_attribute(:title, params[:title])
    post.update_attribute(:body, params[:body])
    redirect_to :back
  end

  member_action :show do
    post = Post.find_by(params[:id])
  end

end
