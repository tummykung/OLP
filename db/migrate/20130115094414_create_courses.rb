class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :time_offer
      t.string :professor

      t.timestamps
    end
  end
end
