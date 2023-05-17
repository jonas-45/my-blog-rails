# frozen_string_literal: true

# This migration adds an 'id' attribute to the users table as a primary key in the database.
class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :id, :primary_key
  end
end
