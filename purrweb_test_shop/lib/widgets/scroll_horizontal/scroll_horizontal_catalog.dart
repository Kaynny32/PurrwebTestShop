import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_catalog.dart';

class ScrollHorizontalCatalog extends StatefulWidget {
  const ScrollHorizontalCatalog({super.key});

  @override
  State<ScrollHorizontalCatalog> createState() => _ScrollHorizontalCatalogState();
}

class _ScrollHorizontalCatalogState extends State<ScrollHorizontalCatalog> {
  final List<Map<String, dynamic>> _items = [
    {
      'text': 'Наборы',
      'urlImage': 'assets/images/Kit.png',
    },
    {
      'text': 'Для лица',
      'urlImage': 'assets/images/For the face.png',
    },
    {
      'text': 'Для глаз',
      'urlImage': 'assets/images/For the eyes.png',
    },
    {
      'text': 'Для тела',
      'urlImage': 'assets/images/For the body.png',
    },
    {
      'text': 'Умывание',
      'urlImage': 'assets/images/Washing.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Padding(
            padding: EdgeInsets.only(
              right: index < _items.length - 1 ? 15 : 0, 
            ),
            child: ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: () { 

              },
              text: item['text'],
              urlImage: item['urlImage'],
                          
            ),
          );
        },
      ),
    );
  }
}