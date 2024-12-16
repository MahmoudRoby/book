
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsApp.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'Harry Poter and the Goblet of Fire ',
                    style: Styles.textStyle20,
                    maxLines: 2, //عدد الاسطر لا يزيد عن 2
                    overflow: TextOverflow
                        .ellipsis, //لو عندى زياده فى العنوان ينتهى بنقط ....عرض المزيد
                  ),
                ),
                const Text(
                  'J.K. Rolling',
                  style: Styles.textStyle14,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
