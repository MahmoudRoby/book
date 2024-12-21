import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_list_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchListCubit, SearchListState>(
      builder: (context, state) {
        if (state is SearchListSuccess) {
          return ListView.builder(
            itemCount: state.searchedBook.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: CustomListViewItem(
                  imageUrl:
                      state.searchedBook[0].volumeInfo.imageLinks.smallThumbnail,
                ),
              );
            },
          );
        } else if (state is SearchListFailer) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else
          return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
