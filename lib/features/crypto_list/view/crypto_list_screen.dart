import 'package:crypto_coint_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:flutter/material.dart';

import '../../../repositories/models/crypto_coin.dart';
import '../widget/crypto_coin_tile.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({Key? key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
        leading: const Icon(Icons.arrow_back),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: const EdgeInsets.only(top:16),
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                return  GryptoCoinTile(coin: coin);
              }),

    );
  }

  Future<void> _loadCryptoCoins() async {
            _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
            setState(() {});
  }
}
