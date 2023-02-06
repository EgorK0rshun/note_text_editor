import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TextEditorBody extends StatefulWidget {
  const TextEditorBody({super.key});

  @override
  State<StatefulWidget> createState() => TextEditorBodyState();
}

class TextEditorBodyState extends State<TextEditorBody> {
  final _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false,
            ),
          ),
        ),
        QuillToolbar.basic(
          controller: _controller,
          iconTheme: QuillIconTheme(
            borderRadius: 8.0,
            iconUnselectedColor: Colors.grey[600],
            iconUnselectedFillColor: Colors.grey[50],
          ),
        ),
      ],
    );
  }
}
