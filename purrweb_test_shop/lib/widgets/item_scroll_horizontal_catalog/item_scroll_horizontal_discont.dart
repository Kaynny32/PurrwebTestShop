import 'package:flutter/material.dart';

class ItemScrollHorizontalDiscont extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String textTitle;
  final String textName;
  final String price;
  final String discontePrice;
  final String urlImage;

  const ItemScrollHorizontalDiscont({
    super.key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.textTitle,
    required this.textName,
    required this.price,
    required this.discontePrice,
    required this.urlImage,
  });

  @override
  State<ItemScrollHorizontalDiscont> createState() => _ItemScrollHorizontalDiscontState();
}

class _ItemScrollHorizontalDiscontState extends State<ItemScrollHorizontalDiscont> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      borderRadius: BorderRadius.circular(8), // Добавлено скругление для InkWell
      child: SizedBox(
        width: widget.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Контейнер для изображения с фоном
            Container(
              width: widget.width,
              height: widget.height * 0.7, // Изображение занимает 70% высоты
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[100], // Фон на случай если изображение не загрузится
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage(widget.urlImage),
                  fit: BoxFit.cover, // Чтобы изображение заполняло контейнер
                ),
              ),
            ),
        
            const SizedBox(height: 8),
        
            // Категория
            Text(
              widget.textTitle, 
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
        
            const SizedBox(height: 4),
        
            // Название товара
            Text(
              widget.textName, 
              maxLines: 2, 
              overflow: TextOverflow.ellipsis, // Добавлено для красоты
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
        
            const SizedBox(height: 8),
        
            // Цены
            _buildPriceSection(),
          ],
        ),
      ),
    );
  }

  // Виджет для отображения цен
  Widget _buildPriceSection() {
    final hasDiscount = widget.price != widget.discontePrice;
    
    if (hasDiscount) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Новая цена
              Text(
                '${widget.price} P',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // Старая цена (зачеркнутая)
              Text(
                '${widget.discontePrice} P',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(height: 2),              
            ],
          )
        ],
      );
    } else {
      // Обычная цена без скидки
      return Text(
        '${widget.price} P',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      );
    }
  }
}