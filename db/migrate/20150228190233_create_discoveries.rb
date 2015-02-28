class CreateDiscoveries < ActiveRecord::Migration
  def change
    create_table :discoveries do |t|
      t.string :name
      t.integer :explorer_id

      t.timestamps
    end
  end
end
