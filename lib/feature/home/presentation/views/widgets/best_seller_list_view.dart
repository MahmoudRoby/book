import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/feature/home/presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            //,لو انا عاوز اعملها زى اللى فوق توبوكس لازم اعمل بناء لليست كلها وده طبعا هيأثر على اداء التطبيق
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailuer) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
