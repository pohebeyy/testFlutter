import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testproject/repositories/crypto_coins/models/crypro_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async{
    final response = await Dio().get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX&tsyms=USD'
      
    );
    final data = response.data as Map<String,dynamic>;
    final dataRaw = data['RAW'] as Map<String,dynamic>;
    final creyptoCoinsList = dataRaw.entries
    .map((e) { 
      final usdData = (e.value as Map<String,dynamic>)['USD'] as Map<String,dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(name: e.key,
       priceInUSD:price,
       imageUrl:'https://www.cryptocompare.com/$imageUrl'
       );})
       .toList();
       return creyptoCoinsList; 
  }
}