class CreateCategorisations < ActiveRecord::Migration
  def change
    create_table :categorisations do |t|

      t.timestamps null: false
    end
  end
end
