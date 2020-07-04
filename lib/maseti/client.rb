module Maseti
  class Client
    include ::Maseti::Constants
    include ::Maseti::WebPageParser

    attr_reader :model

    def initialize(model: nil)

    end

    private

    def get_micro_second_time
      (Time.now.to_f * 1000000).to_i
    end
  end
end
