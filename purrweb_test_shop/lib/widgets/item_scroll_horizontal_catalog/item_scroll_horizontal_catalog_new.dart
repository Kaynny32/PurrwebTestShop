import 'package:flutter/material.dart';

class ItemScrollHorizontalCatalogNew extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String textTitle;
  final String textName;
  final String price;
  final String urlImage;

  const ItemScrollHorizontalCatalogNew(
    {
      super.key,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.textTitle,
      required this.textName,
      required this.price,
      required this.urlImage,
    }
  );

  @override
  State<ItemScrollHorizontalCatalogNew> createState() => _ItemScrollHorizontalCatalogNewState();
}

class _ItemScrollHorizontalCatalogNewState extends State<ItemScrollHorizontalCatalogNew> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,      
      child: SizedBox(
        width: widget.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: widget.width,
              height: widget.height,
              child: Image(image: AssetImage(widget.urlImage)),
            ),
        
            SizedBox(height: 3,),
        
            Text(widget.textTitle, style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),
        
            SizedBox(height: 5,),
        
            Text(widget.textName, maxLines: 2, style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
        
            SizedBox(height: 5,),
        
            Text('${widget.price} P', style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}