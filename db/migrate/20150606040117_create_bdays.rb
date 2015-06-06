class CreateBdays < ActiveRecord::Migration
  def change
    create_table :bdays do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
