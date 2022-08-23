class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.references :alumn, null: false, foreign_key: { on_delete: :cascade }
      t.references :course, null: false, foreign_key: { on_delete: :cascade }
      t.integer :note
      t.string :status
      t.integer :quarter

      t.timestamps
    end
  end
end
