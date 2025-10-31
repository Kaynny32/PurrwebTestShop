import 'package:flutter/material.dart';

class ItemScrollHorizontalSetup extends StatefulWidget {
  final String name;
  final String urlImage;
  final VoidCallback onPressed;

  const ItemScrollHorizontalSetup(
    {
      super.key,
      required this.name,
      required this.urlImage,
      required this.onPressed,
    }
  );

  @override
  State<ItemScrollHorizontalSetup> createState() => _ItemScrollHorizontalSetupState();
}

class _ItemScrollHorizontalSetupState extends State<ItemScrollHorizontalSetup> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 81,
            height: 75,
            child: Image(image: AssetImage(widget.urlImage)),
          ),

          Spacer(),
          
          Text(
            widget.name, 
            maxLines: 1,
            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}