import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_catalog_new.dart';

class ScrollHorizontalCatalogNew extends StatefulWidget {
  const ScrollHorizontalCatalogNew({super.key});

  @override
  State<ScrollHorizontalCatalogNew> createState() => _ScrollHorizontalCatalogNewState();
}

class _ScrollHorizontalCatalogNewState extends State<ScrollHorizontalCatalogNew> {
 final List<Map<String, dynamic>> _items = [
    {
      'textTitle': 'Сыворотка',
      'textName': 'Unstress Total Serenity Serum',
      'price': '10 195',
      'urlImage': 'assets/images/Serum.png',
    },
    {
      'textTitle': 'Тоник',
      'textName': 'Unstress Revitalizing Toner',
      'price': '3095',
      'urlImage': 'assets/images/Tonic.png',
    },
    {
      'textTitle': 'Тоник',
      'textName': 'Unstress Revitalizing Toner',
      'price': '3095',
      'urlImage': 'assets/images/Tonic.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Padding(
            padding: EdgeInsets.only(
              right: index < _items.length - 1 ? 15 : 0, 
            ),
            child: ItemScrollHorizontalCatalogNew(
              width: 163,
              height: 188,
              onPressed: () {},
              textTitle: item['textTitle'],
              textName: item['textName'],
              price: item['price'],
              urlImage: item['urlImage'],              
            ),
          );
        },
      ),
    );
  }
}