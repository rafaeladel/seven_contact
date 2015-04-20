class CreateSevenContactContactRecords < ActiveRecord::Migration
  def change
    create_table :seven_contact_contact_records do |t|

      t.timestamps null: false
    end
  end
end
