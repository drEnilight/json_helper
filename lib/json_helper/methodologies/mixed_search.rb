# frozen_string_literal: true

module JsonHelper
  class MixedSearch < Search
    attr_reader :record, :phrase

    def self.match?(*args)
      new(*args).match?
    end

    def initialize(record, phrase)
      @record = record
      @phrase = phrase
    end

    def match?
      search_tags(record).any? { |tag| (phrase.split(' ') - tag.split(' ')).empty? }
    end
  end
end
