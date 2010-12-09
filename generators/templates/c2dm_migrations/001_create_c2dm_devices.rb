class CreateC2dmDevices < ActiveRecord::Migration # :nodoc:
  def self.up
    create_table :c2dm_devices do |t|
      t.string :registration_id, :size => 120, :null => false
      t.datetime :last_registered_at

      t.timestamps
    end

    add_index :c2dm_devices, :registration_id, :unique => true
  end

  def self.down
    drop_table :c2dm_devices
  end
end
