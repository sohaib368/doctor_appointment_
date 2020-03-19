class CreateFreeDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :free_doctors do |t|

      t.timestamps
    end
  end
end
