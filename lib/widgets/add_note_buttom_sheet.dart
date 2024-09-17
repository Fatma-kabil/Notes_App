import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/custon_button.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'content', maxLine: 5),
            SizedBox(
              height: 16,
            ),
            CutomButton(),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
