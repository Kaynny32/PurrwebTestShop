import 'package:flutter/material.dart';

class BasketBody extends StatefulWidget {
  const BasketBody({super.key});

  @override
  State<BasketBody> createState() => _BasketBodyState();
}

class _BasketBodyState extends State<BasketBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Center(
          child: Text('Корзина'),
        )
      ],
    ));
  }
}