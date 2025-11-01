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
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: widget.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              width: widget.width,
              height: widget.height * 0.6, 
              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage(widget.urlImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
        
            const SizedBox(height: 8),

            Text(
              widget.textTitle, 
              style: TextStyle(
                color: Color.fromRGBO(43, 43, 43, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
        
            const SizedBox(height: 4),

            Text(
              widget.textName, 
              maxLines: 2, 
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
        
            const SizedBox(height: 8),
            
            Row(
            children: [
              
              Text(
                '${widget.price} P',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(width: 15,),
              
              if(widget.discontePrice != '')
              Text(
                '${widget.discontePrice} P',
                style: TextStyle(
                  color: Color.fromRGBO(43, 43, 43, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(height: 2),              
            ],
          )
          ],
        ),
      ),
    );
  }
}