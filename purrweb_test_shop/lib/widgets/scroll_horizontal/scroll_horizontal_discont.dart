import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_discont.dart';

class ScrollHorizontalDiscont extends StatefulWidget {
  const ScrollHorizontalDiscont({super.key});

  @override
  State<ScrollHorizontalDiscont> createState() => _ScrollHorizontalDiscontState();
}

class _ScrollHorizontalDiscontState extends State<ScrollHorizontalDiscont> {
  final List<Map<String, dynamic>> _items = [
    {
      'textTitle': 'Сыворотка',
      'textName': 'Muse Serum Supreme',
      'price': '10 195',
      'discontePrice': '10 195',
      'urlImage': 'assets/discontImage/Muse Serum Supreme.png',
    },
    {
      'textTitle': 'Крем',
      'textName': 'Unstress Revitalizing Toner',
      'price': '1595',
      'discontePrice': '3195',
      'urlImage': 'assets/discontImage/Unstress Revitalizing Toner.png',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
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
            child: ItemScrollHorizontalDiscont(
              width: 163,
              height: 280,
              onPressed: () {},
              textTitle: item['textTitle'],
              textName: item['textName'],
              price: item['price'],
              discontePrice: item['discontePrice'],
              urlImage: item['urlImage'],              
            ),
          );
        },
      ),
    );
  }
}