import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_catalog_new.dart';

class ScrollHorizontalCatalogNew extends StatefulWidget {
  const ScrollHorizontalCatalogNew({super.key});

  @override
  State<ScrollHorizontalCatalogNew> createState() => _ScrollHorizontalCatalogNewState();
}

class _ScrollHorizontalCatalogNewState extends State<ScrollHorizontalCatalogNew> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 279,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 15,
          children: [
            ItemScrollHorizontalCatalogNew(
              width: 163,
              height: 188,
              onPressed: (){},
              textTitle: 'Сыворотка',
              textName: 'Unstress Total Serenity Serum',
              urlImage: 'assets/images/Serum.png',
              price: '10 195',
            ),

            ItemScrollHorizontalCatalogNew(
              width: 163,
              height: 188,
              onPressed: (){},
              textTitle: 'Тоник',
              textName: 'Unstress Revitalizing Toner',
              urlImage: 'assets/images/Tonic.png',
              price: '3095',
            ),

            ItemScrollHorizontalCatalogNew(
              width: 163,
              height: 188,
              onPressed: (){},
              textTitle: 'Тоник',
              textName: 'Unstress Revitalizing Toner',
              urlImage: 'assets/images/Tonic.png',
              price: '3095',
            ),
          ]
        ),            
      ),
    );
  }
}