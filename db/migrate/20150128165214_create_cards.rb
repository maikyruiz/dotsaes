class CreateCards < ActiveRecord::Base
  def change
    create_table :cards do |t|
      t.string :description

      t.timestamps
    end
  end
end
