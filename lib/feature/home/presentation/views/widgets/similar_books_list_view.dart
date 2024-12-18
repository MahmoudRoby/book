
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      //انا حطيت الارتفاع ده هنا عشان الكولوم اللى ف جسم صفحة الهوم بيسمح بالتمدد وانا مش عاوزه يتمدد بطول التطبيق
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomListViewItem(),
          );
        },
      ),
    );
    ;
  }
}
