
import 'package:crypto_coint_list/router/router.dart';
import 'package:crypto_coint_list/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp(
      {super.key}); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: dartTheme,
      routes: routes,
    );
  }
}

