import 'package:flutter/material.dart';

class BlockDivider extends StatefulWidget {
  final String name;
  final String urlLine;

  const BlockDivider(
    {
      super.key,
      required this.name,
      required this.urlLine,
    }
  );

  @override
  State<BlockDivider> createState() => _BlockDividerState();
}

class _BlockDividerState extends State<BlockDivider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118,
      height: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
          Spacer(),
          Image(image: AssetImage(widget.urlLine))
        ],
      ),
    );
  }
}