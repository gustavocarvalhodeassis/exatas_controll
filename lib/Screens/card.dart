import 'package:flutter/material.dart';

class CardBank extends StatefulWidget {
  const CardBank({Key? key}) : super(key: key);

  @override
  _CardBankState createState() => _CardBankState();
}

class _CardBankState extends State<CardBank> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('card'),
    );
  }
}
