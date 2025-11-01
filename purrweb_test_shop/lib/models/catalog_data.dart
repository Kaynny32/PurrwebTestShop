import 'package:flutter/material.dart';
import 'package:purrweb_test_shop/pages/product_type_page.dart';
import 'package:purrweb_test_shop/pages/skin_type_page.dart';

class CatalogItem {
  final String title;
  final Widget? page;
  final bool isDiscont;

  CatalogItem({
    required this.title,
    required this.page,
    required this.isDiscont,
  });
}

class CatalogData {
  static final List<CatalogItem> items = [
    CatalogItem(
      title: 'Назначение',
      page: null,
      isDiscont: false,
    ),
    CatalogItem(
      title: 'Тип средства',
      page: const ProductTypePage(),
      isDiscont: false,
    ),
    CatalogItem(
      title: 'Тип кожи',
      page: const SkinTypePage(),
      isDiscont: false,
    ),
    CatalogItem(
      title: 'Линия косметики',
      page: null,
      isDiscont: false,
    ),
    CatalogItem(
      title: 'Наборы',
      page: null,
      isDiscont: false,
    ),
    CatalogItem(
      title: 'Акции',
      page: null,
      isDiscont: true,
    ),
    CatalogItem(
      title: 'Консультация с косметологом',
      page: null,
      isDiscont: false,
    ),
  ];
}