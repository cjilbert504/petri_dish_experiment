class PetriDish::RequestSpecimen
  attr_reader :controller, :action, :params, :headers, :format, :method, :path,
              :request, :response, :status, :view_runtime, :db_runtime, :created_at

  @@all = []

  def self.all
    @@all
  end

  def self.prepare_slide(args)
    data = args.extract_options!
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
   control_specimen_population
  end

  private

  def control_specimen_population
    all_specimens = self.class.all
    
    case all_specimens.size
    when 10
      all_specimens.shift
      all_specimens << self
    else
      all_specimens << self
    end
  end
end
