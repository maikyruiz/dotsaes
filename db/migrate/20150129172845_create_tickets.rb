class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :concept
      t.float :amount
      t.text :comment
      t.string :entsal

      t.timestamps
      t.references :card, index: true
    end
  end
end
