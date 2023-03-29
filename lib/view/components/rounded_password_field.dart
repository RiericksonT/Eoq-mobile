import 'package:flutter/material.dart';
import 'package:flutter_eoq/view/components/text_field_container.dart';
import 'package:flutter_eoq/constants.dart';
import 'package:flutter/widgets.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(Icons.lock, color: ligthPrimaryColor),
            suffixIcon: IconButton(
              color: ligthPrimaryColor,
              icon: Icon(Icons.visibility),
              onPressed: () {},
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
