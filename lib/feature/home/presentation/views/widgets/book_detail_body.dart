import 'package:bookly/feature/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailAppBar()
          ],
        ),
      ),
    );
  }
}


