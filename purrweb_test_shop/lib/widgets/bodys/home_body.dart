import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/block_divider.dart';
import 'package:purrweb_test_shop/widgets/discount_banner.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_catalog.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_catalog_new.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_discont.dart';
import 'package:purrweb_test_shop/widgets/scroll_horizontal/scroll_horizontal_setup.dart';



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


          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/BgBlock.png'),fit: BoxFit.cover),
            ),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text('Моя схема домашнего ухода',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 364,
                    height: 101,
                    child: ScrollHorizontalSetup(),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 201,
                        height: 35,
                        child: Text(
                          'Ответьте на 10 вопросов, и мы подберем нужный уход',
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(43, 43, 43, 1)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Пройти тест',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

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

          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}