class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :summary
      t.datetime :date_start
      t.datetime :date_finish
      t.string :uid

      t.timestamps
    end
  end
end
