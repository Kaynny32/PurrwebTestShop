import 'package:flutter/material.dart';

class CatalogBody extends StatefulWidget {
  const CatalogBody({super.key});

  @override
  State<CatalogBody> createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Center(
          child: Text('Каталог'),
        )
      ],
    ));
  }
}