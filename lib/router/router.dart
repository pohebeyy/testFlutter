import 'package:testproject/features/crypto_coin/crypto_coin.dart';
import 'package:testproject/features/crypto_list/crypto_list.dart';

final routes = {
        '/':(context) => const CryptoListScreen(title: 'TestProject',),
        '/coin':(context) => const CryptoCoinScreen(),
        }  ;