import 'package:flutter_application_1/domain/entities/crypto_entity.dart';

class CryptoModel {
  CryptoModel({
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

  factory CryptoModel.fromJson(Map json) => CryptoModel(
        exchangeId: json['exchange_id'],
        symbol: json['symbol'],
        baseAsset: json['base_asset'],
        quoteAsset: json['quote_asset'].toString(),
        priceUnconverted: json['price_unconverted'],
        price: json['price'],
        change24h: json['change_24h'],
        spread: json['spread'],
        volume24h: json['volume_24h'],
        status: json['status'].toString(),
        createdAt: json['created_at'].toString(),
        updatedAt: json['updated_at'].toString(),
      );

  CryptoEntity toEntity() => CryptoEntity(
        exchangeId: exchangeId,
        symbol: symbol,
        baseAsset: baseAsset,
        quoteAsset: quoteAsset,
        priceUnconverted: priceUnconverted,
        price: price,
        change24h: change24h,
        spread: spread,
        volume24h: volume24h,
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
