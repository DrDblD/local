class CreateRelateds < ActiveRecord::Migration
  def change
    create_table :relateds do |t|
      t.references :term, index: true
      t.integer :retated_id

      t.timestamps
    end
  end
end
