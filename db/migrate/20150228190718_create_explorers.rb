class CreateExplorers < ActiveRecord::Migration
  def change
    create_table :explorers do |t|
      t.string :name

      t.timestamps
    end
  end
end
