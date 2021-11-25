class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :remote_ip
      t.string :method
      t.string :scheme
      t.string :query_string
      t.string :query_params
      t.string :cookies
      t.string :headers
      t.integer :trap_id

      t.timestamps
    end
  end
end
