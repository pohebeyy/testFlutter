import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
   String? coinName;
  @override
  void didChangeDependencies() {
   
    final args = ModalRoute.of(context)?.settings.arguments;
    

    if(args == null){
       print('null');
       return;
     }
     if(args is! String){
       print('string');
       return;
     }
    coinName = args as String;
    setState(() {
      
    });
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName ?? '...'),),
    );
  }
}