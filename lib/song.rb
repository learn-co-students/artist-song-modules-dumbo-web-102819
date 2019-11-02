require 'pry'

require_relative './concerns/memorable.rb'
require_relative './concerns/paramble.rb'
class Song
  include Memorable::InstanceMethods, Paramble
  extend Memorable::ClassMethods, Findable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
