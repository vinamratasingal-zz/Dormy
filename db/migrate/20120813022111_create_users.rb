class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :dorm
      t.references :school
      t.timestamps
    end
    add_index :users, :dorm_id
    add_index :users, :school_id
  end
end
