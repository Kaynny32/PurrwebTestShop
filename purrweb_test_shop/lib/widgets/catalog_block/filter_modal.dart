import 'package:flutter/material.dart';

class FilterModal {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black54,
      isDismissible: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: WillPopScope(
            onWillPop: () async {
              Navigator.of(context).pop();
              return false;
            },
            child: const FilterModalContent(),
          ),
        );
      },
    );
  }
}

class FilterModalContent extends StatelessWidget {
  const FilterModalContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),

        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  debugPrint('Back button pressed in FilterModal');
                  Navigator.of(context).pop();
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  width: 44, 
                  height: 44, 
                  alignment: Alignment.center,
                  child: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
                ),
              ),
              const Expanded(
                child: Text(
                  'ФИЛЬТРЫ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 44),
            ],
          ),
        ),

        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFilterRow('Тип кожи', 'Жирная'),
                _buildFilterRow('Тип средства', 'Все'),
                _buildFilterRow('Проблема кожи', 'Не выбрано'),
                _buildFilterRow('Эффект средства', 'Увлажнение'),
                _buildFilterRow('Линия косметики', 'Все'),
              ],
            ),
          ),
        ),

        SafeArea(
          top: false,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Применить фильтры',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterRow(String title, String value) {
    return SizedBox(
      width: 343,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}