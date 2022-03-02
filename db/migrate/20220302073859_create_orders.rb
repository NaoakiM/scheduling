class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.string :place

      # t.integer :price  ,null: false  
      t.timestamps
    end
  end
end
