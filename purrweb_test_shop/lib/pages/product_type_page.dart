import 'package:flutter/material.dart';

class ProductTypePage extends StatelessWidget {
  const ProductTypePage({super.key});

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
          'Тип средства',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildProductTypeItem('Очищение'),
          _buildProductTypeItem('Тонизирование'),
          _buildProductTypeItem('Увлажнение'),
          _buildProductTypeItem('Питание'),
          _buildProductTypeItem('Защита'),
          _buildProductTypeItem('Уход за кожей вокруг глаз'),
        ],
      ),
    );
  }

  Widget _buildProductTypeItem(String productType) {
    return ListTile(
      title: Text(
        productType,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),      
      onTap: () {
        print('Выбран: $productType');
      },
    );
  }
}