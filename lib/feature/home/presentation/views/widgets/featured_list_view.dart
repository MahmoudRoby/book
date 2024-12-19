import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/feature/home/presentation/manger/featured%20books%20cubit/featured_cubit_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedCubitState>(
      builder: (context, state) {
        if (state is FeaturedCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            //انا حطيت الارتفاع ده هنا عشان الكولوم اللى ف جسم صفحة الهوم بيسمح بالتمدد وانا مش عاوزه يتمدد بطول التطبيق
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomListViewItem(imageUrl:state.books[index].volumeInfo.imageLinks.thumbnail ,),
                );
              },
            ),
          );
        } else if (state is FeaturedCubitFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else
          return  const Center(child: CircularProgressIndicator());
      },
    );
  }
}
