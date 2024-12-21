import 'package:bookly/core/utils/style.dart';
import 'package:bookly/feature/search/presentation/views/widgits/custom_search_text_field.dart';
import 'package:bookly/feature/search/presentation/views/widgits/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //لازم نحط الليست فيو فى اكسباندد عشان انا حاططها فى كولم
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
