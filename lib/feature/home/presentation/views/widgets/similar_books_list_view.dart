
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/feature/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            //انا حطيت الارتفاع ده هنا عشان الكولوم اللى ف جسم صفحة الهوم بيسمح بالتمدد وانا مش عاوزه يتمدد بطول التطبيق
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomListViewItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SimillarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else
          return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
