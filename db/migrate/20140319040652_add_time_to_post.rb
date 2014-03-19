class AddTimeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :time, :time
  end
end
