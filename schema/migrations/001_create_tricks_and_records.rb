class Migration < Sequel::Migration

  def up
    create_table :tricks do
      primary_key :id

      string :name
      text :description
    end

    create_table :records do
      primary_key :id
      foreign_key :trick_id, :table => :tricks
      
      timestamp :date
      integer :duration
      integer :catches
      text :comment
    end
  end

  def down
    drop_table :tricks
    drop_table :records
  end

end
