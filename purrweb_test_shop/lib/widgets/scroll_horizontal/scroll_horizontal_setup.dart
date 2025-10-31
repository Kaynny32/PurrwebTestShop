import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/item_scroll_horizontal_catalog/item_scroll_horizontal_setup.dart';

class ScrollHorizontalSetup extends StatefulWidget {
  const ScrollHorizontalSetup({super.key});

  @override
  State<ScrollHorizontalSetup> createState() => _ScrollHorizontalSetupState();
}

class _ScrollHorizontalSetupState extends State<ScrollHorizontalSetup> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.90,
      height: 101,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 15,
          children: [
            ItemScrollHorizontalSetup(
              name: 'Демакияж',
              urlImage: 'assets/image_setup/Makeup removal.png',
              onPressed: (){},
            ),
            ItemScrollHorizontalSetup(
              name: 'Очищение',
              urlImage: 'assets/image_setup/Cleansing.png',
              onPressed: (){},
            ),
            ItemScrollHorizontalSetup(
              name: 'Сыворотка',
              urlImage: 'assets/image_setup/Serum.png',
              onPressed: (){},
            ),
            ItemScrollHorizontalSetup(
              name: 'Дневной крем',
              urlImage: 'assets/image_setup/Day cream.png',
              onPressed: (){},
            ),
          ],
        ),            
      ),
    );
  }
}