import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/repositories/crypto_coins/models/crypro_coin.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(  
    leading: Image.network(coin.imageUrl),
    title: Text(
      coin.name,
      style: Theme.of(context).textTheme.bodyMedium),
    subtitle:Text(
      "${coin.priceInUSD} \$"
      ,style: Theme.of(context).textTheme.bodySmall,),
    trailing: Icon(
      Icons.arrow_forward_ios
       ,size: 20),
    onTap: (){
      Navigator.of(context).pushNamed(
       '/coin',
       arguments:coin
        );
    },
          );
  }
}