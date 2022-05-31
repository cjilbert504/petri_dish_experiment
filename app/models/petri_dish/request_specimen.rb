class PetriDish::RequestSpecimen #< ApplicationRecord
  attr_reader :controller, :action, :params, :headers, :format, :method, :path, :request, :response,
              :status, :view_runtime, :db_runtime, :created_at

  @@all = []

  def self.all
    @@all
  end

  def self.prepare_slide(args)
    data = args.extract_options!
    #create!(data) if !data[:path].include?("petri_dish")
    unless data[:path].include? "petri_dish"
      new data
    end
  end

  def initialize(data)
   @controller = data[:controller]
   @action = data[:action]
   @params = data[:params]
   @headers = data[:headers]
   @format = data[:format]
   @method = data[:method]
   @path = data[:path]
   @request = data[:request]
   @response = data[:response]
   @status = data[:status]
   @view_runtime = data[:view_runtime]
   @db_runtime = data[:db_runtime]
   @created_at = Time.now
   @@all << self
  end
end
