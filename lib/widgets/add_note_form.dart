import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/custon_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              onsaved: (p0) {
                title = p0;
              },
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLine: 5,
              onsaved: (p0) {
                subtitle = p0;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CutomButton(
              ontap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
