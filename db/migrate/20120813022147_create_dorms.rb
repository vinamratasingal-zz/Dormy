class CreateDorms < ActiveRecord::Migration
  def change
    create_table :dorms do |t|
      t.string :name
      t.references :school

      t.timestamps
    end
    add_index :dorms, :school_id
  end
end
