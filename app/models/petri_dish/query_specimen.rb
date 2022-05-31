class PetriDish::QuerySpecimen < ApplicationRecord
  attr_reader :sql, :name, :connection, :binds, :type_casted_binds, :statment_name, :cached, :created_at

  @@all = []

  def self.all
    @@all
  end

  def self.prepare_slide(args)
    data = args.extract_options!
    #create!(data)
    new data
  end

  def initialize(data)
   @sql = data[:sql]
   @name = data[:name]
   @connection = data[:connection]
   @binds = data[:binds]
   @type_casted_binds = data[:type_casted_binds]
   @statment_name = data[:statment_name]
   @cached = data[:cached]
   @created_at = Time.now
   @@all << self
  end
end
