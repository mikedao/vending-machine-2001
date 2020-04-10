class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.string :location
      t.references :owner, foreign_key: true
    end
  end
end
