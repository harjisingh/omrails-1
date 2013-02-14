class AddNeedshusslerToPin < ActiveRecord::Migration
  def change
    add_column :pins, :needshussler, :boolean
  end
end
