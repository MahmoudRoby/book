import 'package:bookly/core/utils/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/feature/home/presentation/views/widgets/similar_books_list_view.dart';
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
              child: const CustomListViewItem(imageUrl: 'https://www.pngegg.com/ar/png-wmqnv',),
            ),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 3,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const BooksAction(),
            const SizedBox(
              height: 3,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('you can read',style: Styles.textStyle14,),
            ),
            const SizedBox(
              height: 3,
            ),
          const SimillarBooksListView()
          ],
        ),
      ),
    );
  }
}
