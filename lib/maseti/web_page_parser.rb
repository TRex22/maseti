module Maseti
  module WebPageParser
    def fetch_xls_paths_from_pages
      Maseti::Constants::PAGES.flat_map do |page|
        fetch_page(page)
      end
    end

    def fetch_page(page)
      start_time = get_micro_second_time

      response = HTTParty.get("#{Maseti::Constants::BASE_URL}/#{page}")

      # TODO: Use the time
      end_time = get_micro_second_time
      extract_excel_urls(response, start_time, end_time)
    end

    private

    def extract_excel_urls(response, start_time, end_time)
      parse_html(response)
        .css('a')
        .to_a
        .map { |link| link['href'] }
        .compact
        .select { |link| link.include? Maseti::Constants::FILE_TYPE }
    end

    def parse_html(raw_html)
      Nokogiri::HTML(raw_html)
    end
  end
end
