# frozen_string_literal: true

module JsonHelper
  class Search
    SEARCH_METHODOLOGIES = [
      'StrictSearch',
      'MixedSearch',
      'TagsSearch',
      'MultipleFieldsSearch'
    ].freeze

    attr_reader :path, :phrase

    def self.call(*args)
      new(*args).call
    end

    def initialize(phrase)
      @path = 'data.json'
      @phrase = phrase
    end

    def call
      json.select do |record|
        SEARCH_METHODOLOGIES.any? { |methodology| Object.const_get("JsonHelper::#{methodology}").match?(record, phrase) }
      end
    end

    protected

    def file
      @file ||= File.read(path)
    end

    def json
      @json ||= JSON.parse(file)
    end

    def search_tags(record)
      record.values.map { |value| value.split(', ') }.flatten
    end
  end
end
