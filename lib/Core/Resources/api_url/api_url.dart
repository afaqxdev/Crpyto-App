class ApiUrl {
  static const String firstPart =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency$secondPart";
  static const String secondPart =
      "=inr&order=market_cap_desc&per_page=30&page=1&sparkline=false";
  static const String pricePart = "https://api.coingecko.com/api/v3/coins/";
}
