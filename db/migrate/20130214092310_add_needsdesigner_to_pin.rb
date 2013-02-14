class AddNeedsdesignerToPin < ActiveRecord::Migration
  def change
    add_column :pins, :needsdesigner, :boolean
  end
end
