module Maseti
  module FileDownloader
    def download_all_files
      fetch_xls_paths_from_pages.map do |file_path|
        download(file_path)
      end
    end

    # save_path is defined in client.rb
    def download(file_path)
      raise "save_path is undefined" if save_data && save_path == ''

      start_time = get_micro_second_time

      file_data = HTTParty.get("#{Maseti::Constants::BASE_URL}/#{file_path}")

      # TODO: Use the time
      end_time = get_micro_second_time

      if save_data
        File.open("#{save_path}/#{compute_filename(file_path)}", 'wb') do |file|
          file.write(file_data.body)
        end
      end

      file_data
    end

    private

    def compute_filename(file_path)
      file_path.scan(/[\/]\S+/).last
    end
  end
end
