import 'package:bookly/feature/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomListViewItem(),
            ),
          ],
        ),
      ),
    );
  }
}


