class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string      :name, :gender
      t.integer     :current_age, :death_age
      t.string      :location
      t.float       :location_long, :location_lat
      t.string      :diet, :outlook, :sleep, :handed,
                    :sport_vid, :beer_liq, :rep_dem,
                    :dirty_rainey, :sega_nin, :ruby_js
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end