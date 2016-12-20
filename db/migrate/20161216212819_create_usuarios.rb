class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :pmer_apellido
      t.string :sdo_apellido
      t.string :nick
      t.string :email

      t.timestamps null: false
    end
  end
end
