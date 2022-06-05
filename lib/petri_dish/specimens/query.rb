module PetriDish
  module Specimens
    class Query
      attr_reader :sql, :created_at

      @@all = []

      def self.all=(value)
        @@all = value
      end

      def self.all
        @@all
      end

      def self.prepare_slide
        ActiveSupport::Notifications.subscribe "sql.active_record" do |*args|
          data = args.extract_options!
          new sql: data[:sql]
        end
      end

      def initialize(sql:)
        @sql = sql
        @created_at = Time.now
        control_specimen_population
      end

      private

      def control_specimen_population
        self.class.all = []
        self.class.all << self
      end
    end
  end
end
