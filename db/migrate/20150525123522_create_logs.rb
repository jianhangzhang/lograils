class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :log_raw
      t.string :logstash_raw

      t.timestamps null: false
    end
  end
end
