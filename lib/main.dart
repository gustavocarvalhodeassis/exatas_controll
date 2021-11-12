import 'package:exatas_controll/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_body.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: kSecondaryColor));
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
      theme: ThemeData(splashColor: kSecondaryColor.withOpacity(0.2)),
    ),
  );
}
