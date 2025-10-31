import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_catalog.dart';

class ScrollHorizontalCatalog extends StatefulWidget {
  const ScrollHorizontalCatalog({super.key});

  @override
  State<ScrollHorizontalCatalog> createState() => _ScrollHorizontalCatalogState();
}

class _ScrollHorizontalCatalogState extends State<ScrollHorizontalCatalog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 15,
          children: [
            ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: (){},
              text: 'Наборы',
              urlImage: 'assets/images/Kit.png',
            ),

            ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: (){},
              text: 'Для лица',
              urlImage: 'assets/images/For the face.png',
            ),

            ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: (){},
              text: 'Для глаз',
              urlImage: 'assets/images/For the eyes.png',
            ),

            ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: (){},
              text: 'Для тела',
              urlImage: 'assets/images/For the body.png',
            ),

            ItemScrollHorizontalCatalog(
              width: 72,
              height: 95,
              onPressed: (){},
              text: 'Умывание',
              urlImage: 'assets/images/Washing.png',
            ),
          ],
        ),            
      ),
    );
  }
}