import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/crypto_entity.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key? key,
    required this.cryptoEntity,
  }) : super(key: key);

  final CryptoEntity cryptoEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 2.0, color: Colors.orange),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              cryptoIcon(),
                              const SizedBox(
                                height: 10,
                              ),
                              cryptoNameSymbol(cryptoEntity),
                              const Spacer(),
                              cryptoChange(cryptoEntity),
                              const SizedBox(
                                width: 10,
                              ),
                              changeIcon(cryptoEntity),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[cryptoAmount(cryptoEntity)],
                          )
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget cryptoIcon() {
    return const Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.currency_bitcoin_sharp,
            color: Colors.amber,
            size: 40,
          )),
    );
  }

  Widget cryptoNameSymbol(CryptoEntity crypto) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: crypto.symbol,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\n${crypto.baseAsset}',
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget cryptoChange(CryptoEntity crypto) {
    final bool isChange24Positive = crypto.change24h >= 0;
    final String change24hDisplay = crypto.change24h.toStringAsFixed(2);
    final String change24hSign = isChange24Positive ? "+" : "";

    final String change24Value =
        (crypto.price * (crypto.change24h / 100)).toStringAsFixed(4);

    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '$change24hSign$change24hDisplay%',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isChange24Positive ? Colors.green : Colors.red,
              fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\n$change24Value',
                style: TextStyle(
                    color: isChange24Positive ? Colors.green : Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget changeIcon(CryptoEntity crypto) {
    final bool isChange24Positive = crypto.change24h >= 0;

    return Align(
        alignment: Alignment.topRight,
        child: Icon(
          isChange24Positive ? Icons.arrow_drop_up : Icons.arrow_drop_down,
          color: isChange24Positive ? Colors.green : Colors.red,
          size: 30,
        ));
  }

  Widget cryptoAmount(CryptoEntity crypto) {
    final String priceDisplay = crypto.price.toStringAsFixed(4);
    final String priceSpreadDisplay = crypto.spread.toStringAsFixed(4);

    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: '\n\$$priceDisplay',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 35,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '\n$priceSpreadDisplay',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
