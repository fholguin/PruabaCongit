class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :topic
      t.string :speaker

      t.timestamps
    end
  end
end
