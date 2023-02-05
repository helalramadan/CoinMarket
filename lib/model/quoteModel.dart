class Quote {
  Quote({
    this.price,
    this.volume24H,
    this.volumeChange24H,
    this.percentChange1H,
    this.percentChange24H,
    this.percentChange7D,
    this.marketCap,
    this.marketCapDominance,
    this.fullyDilutedMarketCap,
    this.lastUpdated,
  });

  Quote.fromJson(Map<String, dynamic> json) {
    price = json["price"];
    volume24H = json["volume24H"];
    volumeChange24H = json["volumeChange24H"];
    percentChange1H = json["percentChange1H"];
    percentChange24H = json["percentChange24H"];
    percentChange7D = json["percentChange7D"];
    marketCap = json["marketCap"];
    marketCapDominance = json["marketCapDominance"];
    fullyDilutedMarketCap = json["fullyDilutedMarketCap"];
    lastUpdated = json["lastUpdated"];
  }

  double? price;
  int? volume24H;
  double? volumeChange24H;
  double? percentChange1H;
  double? percentChange24H;
  double? percentChange7D;
  double? marketCap;
  int? marketCapDominance;
  double? fullyDilutedMarketCap;
  DateTime? lastUpdated;
}
