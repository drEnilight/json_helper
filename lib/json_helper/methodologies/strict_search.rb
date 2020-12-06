# frozen_string_literal: true

module JsonHelper
  class StrictSearch < Search
    attr_reader :record, :phrase

    def self.match?(*args)
      new(*args).match?
    end

    def initialize(record, phrase)
      @record = record
      @phrase = phrase
    end

    def match?
      record.values.include?(phrase)
    end
  end
end
