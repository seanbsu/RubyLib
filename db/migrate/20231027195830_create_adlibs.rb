class CreateAdlibs < ActiveRecord::Migration[7.1]
  def change
    create_table :adlibs do |t|
      t.string :noun
      t.string :verb
      t.string :adjective
      t.string :adverb

      t.timestamps
    end
  end
end
