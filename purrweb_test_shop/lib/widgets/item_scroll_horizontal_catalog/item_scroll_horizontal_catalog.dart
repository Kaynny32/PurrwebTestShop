import 'package:flutter/material.dart';

class ItemScrollHorizontalCatalog extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String text;
  final String urlImage;

  const ItemScrollHorizontalCatalog(
    {
      super.key,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.text,
      required this.urlImage,
    }
  );

  @override
  State<ItemScrollHorizontalCatalog> createState() => _ItemScrollHorizontalCatalogState();
}

class _ItemScrollHorizontalCatalogState extends State<ItemScrollHorizontalCatalog> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 72,
            height: 72,
            child: Image(image: AssetImage(widget.urlImage)),
          ),

          Spacer(),
          
          Text(
            widget.text, 
            maxLines: 1,
            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}