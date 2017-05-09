class CreateBridges < ActiveRecord::Migration[5.0]
  def change
    create_table :bridges do |t|
      t.string :name
      t.boolean :isUp

      t.timestamps
    end
  end
end
