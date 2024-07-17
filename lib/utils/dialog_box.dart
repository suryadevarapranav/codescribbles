import 'package:flutter/material.dart';
import 'package:todolistapp/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller; // to access the controller in the home page and we pass this in the constructor.
  VoidCallback onSave;
  VoidCallback onCancel;

  // creating the constructor for the DialogBox.
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get the user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // buttons -> save & cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // using the defined button component.

                // save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
