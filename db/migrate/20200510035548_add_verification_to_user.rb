class AddVerificationToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verification, :string
    add_column :users, :typeOfCard, :string
    add_column :users, :cardNumber, :string
  end
end
