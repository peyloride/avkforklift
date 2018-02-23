RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  config.authorize_with do
    if current_user.nil?
      redirect_to main_app.new_user_session_path
    else
      redirect_to main_app.new_user_session_path unless current_user.is_admin?
    end
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model LandingPage do
    edit do
      # For RailsAdmin >= 0.5.0
      field :title
      field :body, :ck_editor
    end
  end

  config.model Forklift do
    edit do
      # For RailsAdmin >= 0.5.0
      field :plate
      field :brand
      field :lifting_capacity
      field :production_year
      field :lifting_height
      field :forklift_type
      field :price
      field :model
      field :elevator_type
      field :wheels
      field :accumulator
      field :system
      field :made_in
      field :attachment
      field :status
      field :purchase_price
      field :purchase_date
      field :expenses
      field :sale_price
      field :sale_date
      field :profit
      field :waiting_days
      field :index_line_up
      field :description, :ck_editor
    end
  end
end


