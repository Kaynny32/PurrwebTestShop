import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/widgets/bodys/skin_type_products_body.dart';

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({super.key});

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
        title: const Text(
          'По типу кожи',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildSkinTypeItem(context, 'Жирная'),
          _buildSkinTypeItem(context, 'Комбинированная'),
          _buildSkinTypeItem(context, 'Нормальная'),
          _buildSkinTypeItem(context, 'Сухая'),
          _buildSkinTypeItem(context, 'Любой тип'),
        ],
      ),
    );
  }

  Widget _buildSkinTypeItem(BuildContext context, String skinType) {
    return ListTile(
      title: Text(
        skinType,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
        print('Выбран: $skinType');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SkinTypeProductsBody(skinType: skinType),
          ),
        );
      },
    );
  }
}