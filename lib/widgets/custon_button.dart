import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(
            fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w500),
      )),
    );
  }
}
