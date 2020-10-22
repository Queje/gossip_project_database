class CreateMailings < ActiveRecord::Migration[6.0]
  def change
    create_table :mailings do |t|
      t.belongs_to :private_message, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
