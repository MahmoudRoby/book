import 'package:bookly/core/function/lancheringUrl.dart';
import 'package:bookly/feature/home/data/model/book_model/book_model.dart';

import 'package:bookly/feature/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Row(
      children: [
        const CustomButton(
          backgroundColor: Colors.white,
          text: 'Free',
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
        ),
        CustomButton(
          backgroundColor: const Color(0xffEF8262),
          text: getText(bookModel),
          textColor: Colors.white,
          fontSize: 16,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12), topRight: Radius.circular(12)),
          onPressed: () async {
            lunchingUrl(context, bookModel.volumeInfo.previewLink!);
          },
        )
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink != null) {
      return 'Free Preview';
    } else
      return 'Not Avaiable';
  }
}
