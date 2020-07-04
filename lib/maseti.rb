require 'httparty'
require 'nokogiri'

# Constants
require 'maseti/version'
require 'maseti/constants'

# Client
require 'maseti/web_page_parser'
require 'maseti/client'

module Maseti
  class Error < StandardError; end
end
