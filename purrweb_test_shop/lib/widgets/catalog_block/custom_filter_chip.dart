import 'package:flutter/material.dart';

class CustomFilterChip extends StatelessWidget {
  final String label;
  final int index;
  final int selectedIndex;
  final Function(int) onPressed;

  const CustomFilterChip({
    super.key,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedIndex == index;
    
    return SizedBox(
      width: 105,
      height: 45,
      child: ElevatedButton(
        onPressed: () => onPressed(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.black : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}