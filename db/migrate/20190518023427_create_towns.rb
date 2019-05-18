class CreateTowns < ActiveRecord::Migration[5.2]
  def change
    create_table :towns do |t|
      t.belongs_to :province,index: true
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
