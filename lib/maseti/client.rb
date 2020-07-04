module Maseti
  class Client
    include ::Maseti::Constants
    include ::Maseti::WebPageParser
    include ::Maseti::FileDownloader

    attr_reader :model, :save_data, :save_path

    def initialize(model: nil, save_data: false, save_path: '', read_from_save_path: false)
      @model = model
      @save_data = save_data
      @save_path = save_path
    end

    private

    def get_micro_second_time
      (Time.now.to_f * 1000000).to_i
    end
  end
end
