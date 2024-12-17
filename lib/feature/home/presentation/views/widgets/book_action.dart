


import 'package:bookly/feature/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Row(
      children: const [
        CustomButton(
          backgroundColor: Colors.white,
          text: ' 19.19 \$',
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
        ),
        CustomButton(
          backgroundColor: Color(0xffEF8262),
          text: 'Free Preview',
          textColor: Colors.white,
          fontSize: 16,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12), topRight: Radius.circular(12)),
        )
      ],
    );
  }
}
