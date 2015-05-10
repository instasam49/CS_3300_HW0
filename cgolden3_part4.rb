class Car
  attr_accessor :model, :year, :make
  @@num_cars_made = 0
  @@makes = {}

  def initialize(params = {})
    @@num_cars_made += 1
    @make = params[:make] || 'unknown'
    @model = params[:model] || 'unknown'
    @year = params[:year] || 'unknown'

    if @@makes[@make]
      @@makes[@make] += 1
    else
      @@makes[@make] = 1
    end
  end

  def self.num_cars_made
    @@num_cars_made
  end

  def self.most_popular_make
    if @@makes == nil
      return nil
    end
    item = @@makes.reject do |make|
      make == 'unknown'
    end
                .max_by do |num|
      num
    end
    if item
      item.first
    else
      nil
    end
  end

  def self.been_made?(car_make)
    @@makes.member? car_make
  end
end