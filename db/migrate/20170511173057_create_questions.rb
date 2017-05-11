class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :pregunta1
      t.integer :pregunta2
      t.integer :pregunta3
      t.text :pregunta4
      t.integer :pregunta5
      t.integer :pregunta6
      t.integer :pregunta7
      t.text :pregunta8

      t.timestamps
    end
  end
end
