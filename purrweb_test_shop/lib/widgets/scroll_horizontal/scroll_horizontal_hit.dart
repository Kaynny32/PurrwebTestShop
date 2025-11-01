import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_catalog_new.dart';

class ScrollHorizontalHit extends StatefulWidget {
  const ScrollHorizontalHit({super.key});

  @override
  State<ScrollHorizontalHit> createState() => _ScrollHorizontalHitState();
}

class _ScrollHorizontalHitState extends State<ScrollHorizontalHit> {

  final List<Map<String, dynamic>> _items = [
    {
      'textTitle': 'Сыворотка',
      'textName': 'Forever Young- TotalRenewal Serum',
      'price': '10 195',
      'urlImage': 'assets/hit_image/Forever.png',
    },
    {
      'textTitle': 'Осветляющая маска',
      'textName': 'Illustious Mask',
      'price': '1595',
      'urlImage': 'assets/hit_image/Illustious.png',
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