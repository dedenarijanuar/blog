class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :email
      t.boolean :is_active

      t.timestamps
    end
  end
end
