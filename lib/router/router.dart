import '../features/crypto_coin/view/crepto_coin_screen.dart';
import 'package:crypto_coint_list/features/crypto_list/crypto_list.dart';
import '';

final routes = {
'/': (context) => const CryptoListScreen(),
'/coin': (context) => const CryptoCoinScreen(),
};