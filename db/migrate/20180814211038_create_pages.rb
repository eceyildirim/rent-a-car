class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :page_name
      t.integer :visitor_count

      t.timestamps
    end
  end
end
