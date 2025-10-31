import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/pages/main_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/main': (context) => MainPage(),
      },
    )
  );
}
