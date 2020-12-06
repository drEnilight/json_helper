# frozen_string_literal: true

module JsonHelper
  class MultipleFieldsSearch < Search
    attr_reader :record, :phrase

    def self.match?(*args)
      new(*args).match?
    end

    def initialize(record, phrase)
      @record = record
      @phrase = phrase
    end

    def match?
      (phrase.split(' ') - search_tags(record)).empty?
    end
  end
end
