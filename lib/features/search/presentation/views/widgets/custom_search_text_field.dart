import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              enabledBorder: buildOutlinedInputBorder(),
              focusedBorder: buildOutlinedInputBorder(),
              hintText: 'Search',
              suffixIcon: Opacity(
                opacity: 0.7,
                child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          );
  }
}

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.grey.shade300),
    );
  }

