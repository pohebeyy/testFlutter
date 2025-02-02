import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/features/crypto_list/widgets/widgets.dart';
import 'package:testproject/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:testproject/repositories/crypto_coins/models/crypro_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

 

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  
  
  List<CryptoCoin>? _cryptoListScreenState;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body:(_cryptoListScreenState == null) 
      ? const SizedBox() :
       ListView.separated(itemCount:_cryptoListScreenState!.length,separatorBuilder: (context,i) =>Divider(),
      itemBuilder: (context,i){
         final coin = _cryptoListScreenState![i];
         
        return  CryptoCoinTile(coin: coin);
      },
      ),
      
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed:() async{
          _cryptoListScreenState = await CryptoCoinsRepository().getCoinsList();
          setState(() {
            
          });
          } 
        ),
    );
  }
}

