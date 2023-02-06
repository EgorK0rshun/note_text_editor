import 'package:flutter/material.dart';
import 'package:text_editor/ui/widgets/text_editor_app_bar.dart';
import 'package:text_editor/ui/widgets/text_editor_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextEditorAppBar(),
      body: const TextEditorBody(),
    );
  }
}
