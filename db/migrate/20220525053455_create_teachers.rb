class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :desc
      t.integer :country_code
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
