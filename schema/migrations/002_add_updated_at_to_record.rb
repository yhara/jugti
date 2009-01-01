class AddUpdatedAtToRecods < Sequel::Migration

  def up
    alter_table :records do
      add_column :updated_at, :timestamp
    end
  end

  def down
    alter_table :records do
      drop_column :updated_at
    end
  end

end
