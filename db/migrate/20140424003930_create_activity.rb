class CreateActivity < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity
    end
  end
end
