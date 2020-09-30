class CreateBacks < ActiveRecord::Migration[6.0]
  def change
    create_table :backs do |t|
      t.integer :backer_id
      t.integer :backee_id
    end
  end
end
