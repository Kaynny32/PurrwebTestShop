import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/home_blocks/block_divider.dart';
import 'package:purrweb_test_shop/widgets/home_blocks/care_category_grid.dart';
import 'package:purrweb_test_shop/widgets/home_blocks/discount_banner.dart';
import 'package:purrweb_test_shop/widgets/home_blocks/personal_care_plan.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_catalog.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_catalog_new.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_discont.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_hit.dart';



class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          DiscountBanner(),
      
          const SizedBox(
            height: 25,
          ),
      
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ScrollHorizontalCatalog(),
          ),
      
          const SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: BlockDivider(
              name: 'Новинки',
              urlLine: 'assets/line/Line.png',
            ),
          ),
      
          const SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ScrollHorizontalCatalogNew(),
          ),

          const SizedBox(
            height: 35,
          ),


          PersonalCarePlan(),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: BlockDivider(
              name: 'Акции',
              urlLine: 'assets/line/LinePink.png',
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ScrollHorizontalDiscont(),
          ),

          const SizedBox(
            height: 20,
          ),

          CareCategoryGrid(),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: BlockDivider(
              name: 'Хиты',
              urlLine: 'assets/line/LineOrange.png',
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ScrollHorizontalHit(),
          ),

          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}