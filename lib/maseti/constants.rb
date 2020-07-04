module Maseti
  module Constants
    # https://www.justice.gov.za/master/maseti/bfn/bfn_estates1.xls
    BASE_URL = 'https://www.justice.gov.za/master/maseti/'
    PAGES = [ 'maseti.html', 'maseti02.html' ] # TODO: Future proof?

    COUNTRY_CODE = {
      bho: "Bhisho",
      bfn: "Bloemfontein",
      ctn: "Cape Town",
      dbn: "Durban",
      ght: "Grahamstown",
      jhb: "Johannesburg",
      kmb: "Kimberley",
      mbt: "Mmabatho",
      pmb: "Pietermaritzburg",
      pol: "Polokwane",
      plz: "Port Elizabeth",
      pta: "Pretoria",
      tho: "Thohoyandou",
      uta: "Umtata"
    }

    TYPE = {
      "estates": 0,
      "trust": 1,
      "insolve": 2,
      "guard": 3
    }

    FILE_TYPE = '.xls'
  end
end
