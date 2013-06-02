class CreateBaseconfigs < ActiveRecord::Migration
  def change
    create_table :baseconfigs do |t|
      t.float :need
      t.float :offer
      t.float :start

      t.timestamps
    end
  end
end
