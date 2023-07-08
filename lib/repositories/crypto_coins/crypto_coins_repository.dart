import 'package:crypto_coint_list/repositories/models/crypto_coin.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,ABCC,AAC,ABT,ABYSS,ACCN,ACE,AID,AGVC,DOV,CAG,AGI&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    // ignore: non_constant_identifier_names
    final CryptoCoinsList = dataRaw.entries.map((e) {
      final usdData = (e.value as Map<String, dynamic>)['USD']as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageURL = usdData['IMAGEURL'];

      return CryptoCoin(
          name: e.key,
          priceInUSD: price,
          imageUrl: 'https://www.cryptocompare.com/$imageURL',
      );
    }).toList();
    return CryptoCoinsList;
  }
}