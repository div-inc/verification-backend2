class CreatePongs < ActiveRecord::Migration[5.2]
  def change
    create_table :pongs do |t|

      t.timestamps
    end
  end
end
