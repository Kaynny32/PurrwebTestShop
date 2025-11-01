import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/models/catalog_data.dart';
import 'package:purrweb_test_shop/widgets/catalog_block/button_catolog.dart';

class CatalogBody extends StatefulWidget {
  const CatalogBody({super.key});

  @override
  State<CatalogBody> createState() => _CatalogBodyState();
}

class _CatalogBodyState extends State<CatalogBody> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 341,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Поиск',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: CatalogData.items.map((item) {
                  return ButtonCatolog(
                    name: item.title,
                    page: item.page,
                    isDiscont: item.isDiscont,
                  );
                }).toList(),
              ),
            ),
          ),

          Spacer(),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: Stack(
              children: [

                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/BgTwo.png'),fit:BoxFit.cover)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: SizedBox(
                        width: 230,
                        height: 50,
                        child: Text('Составим схему идеального домашнего ухода',maxLines: 2,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        width: 230,
                        height: 30,
                        child: Text('10 вопросов о вашей коже ',maxLines: 2,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: SizedBox(
                          width: 120,
                          height: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Color.fromRGBO(43, 43, 43, 1)),
                              shape: WidgetStateProperty.all(
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
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}