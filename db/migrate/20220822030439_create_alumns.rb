class CreateAlumns < ActiveRecord::Migration[7.0]
  def change
    create_table :alumns do |t|
      t.string :name

      t.timestamps
    end
  end
end
