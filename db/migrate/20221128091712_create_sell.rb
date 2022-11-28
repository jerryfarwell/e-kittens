class CreateSell < ActiveRecord::Migration[7.0]
  def change
    create_table :sells do |t|
      t.integer :amount
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
