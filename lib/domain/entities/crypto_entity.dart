class CryptoEntity {
  CryptoEntity({
    required this.exchangeId,
    required this.symbol,
    required this.baseAsset,
    required this.quoteAsset,
    required this.priceUnconverted,
    required this.price,
    required this.change24h,
    required this.spread,
    required this.volume24h,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  String exchangeId;
  String symbol;
  String baseAsset;
  String quoteAsset;
  num priceUnconverted;
  num price;
  num change24h;
  num spread;
  num volume24h;
  String status;
  String createdAt;
  String updatedAt;
}
