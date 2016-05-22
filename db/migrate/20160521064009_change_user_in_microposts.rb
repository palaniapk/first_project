class ChangeUserInMicroposts < ActiveRecord::Migration
  def up
    rename_column :microposts,:user,:user_id
    change_column :microposts,:user_id,:integer
  end

  def down
    rename_column :microposts,:user_id,:user
    change_column :microposts,:user,:string
  end
end
