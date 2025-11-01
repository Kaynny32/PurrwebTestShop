import 'package:flutter/material.dart';

class ButtonCatolog extends StatefulWidget {
  final String name;
  final Widget? page;
  final bool isDiscont;

  const ButtonCatolog({
    super.key,
    required this.name,
    required this.page,
    required this.isDiscont,
  });

  @override
  State<ButtonCatolog> createState() => _ButtonCatologState();
}

class _ButtonCatologState extends State<ButtonCatolog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {
              if (widget.page != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => widget.page!),
                );
              } 
            },
            child: Text(
              widget.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          if (widget.isDiscont)
            const Image(image: AssetImage('assets/icons/iconDiscont.png')),
        ],
      ),
    );
  }
}