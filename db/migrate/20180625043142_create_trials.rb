class CreateTrials < ActiveRecord::Migration[5.0]
  def change
    create_table :trials do |t|

      t.string :title
      t.text :contents
      t.string :name
      
      t.timestamps
    end
  end
end
