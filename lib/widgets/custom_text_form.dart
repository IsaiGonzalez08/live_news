import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.width});
  final String labelText;
  final String hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 4),
          child: Text(
            labelText,
            style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            cursorColor: const Color(0xFF000000),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                  color: Color(0xFF797979),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
              contentPadding:
                  const EdgeInsets.only(top: 16, bottom: 16, left: 20),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(
                  width: 1.2,
                  color: Color(0xFF000000),
                  style: BorderStyle.solid,
                ),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xFFDFDFDF),
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
