class AddNeedshackerToPin < ActiveRecord::Migration
  def change
    add_column :pins, :needshacker, :boolean
  end
end
