# Throw away class to act like an ActiveRecord::Base class
Target = Class.new do
  def self.create!(options);end
  def self.create(options);end
  def self.find(id)
    self
  end
  def self.all(*args)
    []
  end
  def destroy;end
  def update_attributes(options = {});end
end

class Building < Factory
  def initialize(options = {})
    defaults = {
      id:           1,
      name:         "Test",
      description:  "Desc",
      city:         "Boulder",
      state:        "CO",
      type:         "Skyscrapper",
      year_built:   2012,
      floors:       Factory.build_multi(Floor,3)
    }
    build(defaults.merge(options))
  end
end

class Floor < Factory
  def initialize(options = {})
    defaults = {
      id: 1,
      number: 1,
      square_feet: 2000,
      building_id: 1,
    }
    build(defaults.merge(options))
  end
end



