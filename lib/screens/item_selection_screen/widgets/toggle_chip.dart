import 'package:flutter/material.dart';

class ToggleChip extends StatefulWidget {
  const ToggleChip({super.key, required this.color, required this.lable, required this.icon});

  final Color color;
  final String lable;
  final IconData icon;

  @override
  State<ToggleChip> createState() => _ToggleChipState();
}

class _ToggleChipState extends State<ToggleChip> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: widget.color),
      ),
      child: Row(
        children: [
          Icon(widget.icon, size: 14, color: widget.color),
          const SizedBox(width: 2),
          Text(
            widget.lable,
            style: TextStyle(color: widget.color, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
