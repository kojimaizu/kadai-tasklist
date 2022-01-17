class AddStatuToStatus < ActiveRecord::Migration[6.1]
  def change
    add_column :statuses, :statu, :string
  end
end
