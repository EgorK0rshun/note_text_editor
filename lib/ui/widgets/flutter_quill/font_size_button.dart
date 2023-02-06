import 'package:flutter/material.dart' as material;

import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/translations.dart';

QuillFontSizeButton fontSizeButton(QuillController controller) => QuillFontSizeButton(
      items: fontSizeButtonItems,
      rawItemsMap: fontSizes,
      attribute: attribute,
      controller: controller,
      onSelected: (newFont) {
        controller.formatSelection(
          Attribute.fromKeyValue('font', newFont == 'Clear' ? null : newFont),
        );
      },
    );

///default font size values
Map<String, String> fontSizes = {
  'Small'.i18n: 'small',
  'Large'.i18n: 'large',
  'Huge'.i18n: 'huge',
  'Clear'.i18n: '0'
};

Attribute attribute = Attribute.size;

List<material.PopupMenuEntry<String>> fontSizeButtonItems = [
  for (MapEntry<String, String> fontSize in fontSizes.entries)
    material.PopupMenuItem<String>(
      key: material.ValueKey(fontSize.key),
      value: fontSize.value,
      child: material.Text(
        fontSize.key.toString(),
        style: material.TextStyle(
          color: fontSize.value == '0' ? material.Colors.red : null,
        ),
      ),
    ),
];
