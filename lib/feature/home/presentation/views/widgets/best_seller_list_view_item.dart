import 'package:bookly/constants.dart';

import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          CustomListViewItem(imageUrl:bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2, //عدد الاسطر لا يزيد عن 2
                      overflow: TextOverflow
                          .ellipsis, //لو عندى زياده فى العنوان ينتهى بنقط ....عرض المزيد
                    ),
                  ),
                   Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                        rating:bookModel.volumeInfo.averageRating?? 0 ,
                        count: bookModel.volumeInfo.ratingsCount?? 0,
                        ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
