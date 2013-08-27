class Urls < ActiveRecord::Migration
  def up
  	create_table :urls do |t|
  		t.string :long_url
  		t.string :short_url

  		t.timestamps
  	end
  end

  def down
  end
end
