class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.belongs_to :province,index: true
      t.belongs_to :town,index: true
      t.belongs_to :area,index: true
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
