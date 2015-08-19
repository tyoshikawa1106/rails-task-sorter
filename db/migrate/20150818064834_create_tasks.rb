class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.date :activity_date

      t.timestamps
    end
  end
end
