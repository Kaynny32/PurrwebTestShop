import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_setup.dart';

class ScrollHorizontalSetup extends StatefulWidget {
  const ScrollHorizontalSetup({super.key});

  @override
  State<ScrollHorizontalSetup> createState() => _ScrollHorizontalSetupState();
}

class _ScrollHorizontalSetupState extends State<ScrollHorizontalSetup> {

  final List<Map<String, dynamic>> _items = [
    {
      'name': 'Демакияж',
      'urlImage': 'assets/image_setup/Makeup removal.png',
    },
    {
      'name': 'Очищение',
      'urlImage': 'assets/image_setup/Cleansing.png',
    },
    {
      'name': 'Сыворотка',
      'urlImage': 'assets/image_setup/Serum.png',
    },
    {
      'name': 'Дневной крем',
      'urlImage': 'assets/image_setup/Day cream.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 101,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Padding(
            padding: EdgeInsets.only(
              right: index < _items.length - 1 ? 15 : 0, 
            ),
            child: ItemScrollHorizontalSetup(
              name: item['name'],
              urlImage: item['urlImage'],
              onPressed: () { 

              },                          
            ),
          );
        },
      ),
    );
  }
}