import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.count, required this.rating});
  final int count;
  final int rating;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
         Opacity(
          opacity: .5,
          child: Text('($count)', style: Styles.textStyle14),
        ),
      ],
    );
  }
}
