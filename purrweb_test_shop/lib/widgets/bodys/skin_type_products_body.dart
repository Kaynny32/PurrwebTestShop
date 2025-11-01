import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/models/products_data.dart';
import 'package:purrweb_test_shop/widgets/catalog_block/custom_filter_chip.dart';
import 'package:purrweb_test_shop/widgets/catalog_block/filter_modal.dart';
import 'package:purrweb_test_shop/widgets/catalog_block/product_card.dart';


class SkinTypeProductsBody extends StatefulWidget {
  final String skinType;

  const SkinTypeProductsBody({super.key, required this.skinType});

  @override
  State<SkinTypeProductsBody> createState() => _SkinTypeProductsBodyState();
}

class _SkinTypeProductsBodyState extends State<SkinTypeProductsBody> {
  int _selectedFilterIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const SizedBox.shrink(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 16, bottom: 8),
            child: Text(
              'Средства для ${widget.skinType} кожи',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${ProductsData.products.length} продуктов',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),          

                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () => FilterModal.show(context),
                    child: Image.asset(
                      'assets/icons/FadersHorizontal.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 25, right: 25),
              children: [
                CustomFilterChip( // Используем CustomFilterChip вместо FilterChip
                  label: 'Очищение',
                  index: 0,
                  selectedIndex: _selectedFilterIndex,
                  onPressed: (index) {
                    setState(() {
                      _selectedFilterIndex = _selectedFilterIndex == index ? -1 : index;
                    });
                  },
                ),
                const SizedBox(width: 8),
                CustomFilterChip(
                  label: 'Увлажнение',
                  index: 1,
                  selectedIndex: _selectedFilterIndex,
                  onPressed: (index) {
                    setState(() {
                      _selectedFilterIndex = _selectedFilterIndex == index ? -1 : index;
                    });
                  },
                ),
                const SizedBox(width: 8),
                CustomFilterChip(
                  label: 'Регенерация',
                  index: 2,
                  selectedIndex: _selectedFilterIndex,
                  onPressed: (index) {
                    setState(() {
                      _selectedFilterIndex = _selectedFilterIndex == index ? -1 : index;
                    });
                  },
                ),
                const SizedBox(width: 8),
                CustomFilterChip(
                  label: 'Защита',
                  index: 3,
                  selectedIndex: _selectedFilterIndex,
                  onPressed: (index) {
                    setState(() {
                      _selectedFilterIndex = _selectedFilterIndex == index ? -1 : index;
                    });
                  },
                ),
                const SizedBox(width: 8),
                CustomFilterChip(
                  label: 'Питание',
                  index: 4,
                  selectedIndex: _selectedFilterIndex,
                  onPressed: (index) {
                    setState(() {
                      _selectedFilterIndex = _selectedFilterIndex == index ? -1 : index;
                    });
                  },
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 163 / 280, 
                ),
                itemCount: ProductsData.products.length,
                itemBuilder: (context, index) {
                  final product = ProductsData.products[index];
                  return ProductCard(
                    productName: product['name']!,
                    brand: product['brand']!,
                    price: product['price']!,
                    imagePath: product['image']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}