class CreateConferencia < ActiveRecord::Migration
  def change
    create_table :conferencia do |t|
      t.string :tema
      t.string :conferencista

      t.timestamps
    end
  end
end
