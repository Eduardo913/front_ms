import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCustom extends StatefulWidget {
  TextFieldCustom(
      {Key? key, required this.text,required this.controller, this.width = 200, this.isNumber = false})
      : super(key: key);

  final String text;
  double? width;
  bool isNumber;
  TextEditingController controller;

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: widget.controller,
        keyboardType: widget.isNumber ? TextInputType.number : null,
        inputFormatters:
            widget.isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
        decoration:
            InputDecoration(hintText: widget.text, label: Text(widget.text)),
      ),
    );
  }
}
