class ApplicationController < ActionController::Base
  before_action :set_configurations

  private
  def set_configurations
    @app_name = "InfoEBD"
    @menu_itens = ['periods', 'teachers', 'school_classes',  'type_students', 
                    'students', 'product_categories', 'products', 'purchases', 'sales' 
                  ]
    @colors = ['red', 'yellow', 'green', 'blue', 'blue']
  end
end
