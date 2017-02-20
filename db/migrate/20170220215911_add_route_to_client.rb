class AddRouteToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :route, foreign_key: true
  end
end
