class HaikusUsersTable < ActiveRecord::Migration
  def change
    create_table(:favorites) do |t|
      t.integer :user_id
      t.integer :haiku_id
    end
  end
end
