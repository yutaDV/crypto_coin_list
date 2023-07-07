import 'package:flutter/material.dart';

import '../widget/crypto_coin_tile.dart';


class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({Key? key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Curencies List'),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, i) {
            const coinName = 'Bitcoin';
            return const GryptoCoinTile(coinName: coinName);
          }),
    );
  }
}
