class Building < InactiveRecord
  def initialize(options = {})
    defaults = {
      id:           1,
      name:         "Test",
      description:  "Desc",
      city:         "Boulder",
      state:        "CO",
      type:         "Skyscrapper",
      year_built:   2012,
      floors:       InactiveRecord.build_multi(Floor,3)
    }
    build(defaults.merge(options))
  end
end

class Floor < InactiveRecord
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



