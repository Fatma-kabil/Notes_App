import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key, this.ontap, this.isLoading = false});
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24, width: 24, child: CircularProgressIndicator())
                : const Text(
                    'Add',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  )),
      ),
    );
  }
}
