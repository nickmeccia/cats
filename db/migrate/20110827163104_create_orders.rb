class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string  :address_line_one
      t.string  :address_line_two
      t.string  :state
      t.string  :zip_code
      t.string  :email
      t.string  :first_name
      t.string  :last_name
      t.boolean :complete
      
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
