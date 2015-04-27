class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :logable, :polymorphic => true, index: true
      t.string :user
      t.string :t_type
      t.timestamps null: false
    end
  end
end
