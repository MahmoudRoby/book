import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/feature/search/data/repo/search_repoI.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_list_cubit.dart';
import 'package:bookly/feature/search/presentation/views/widgits/custom_search_text_field.dart';
import 'package:bookly/feature/search/presentation/views/widgits/search_result_list_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchListCubit(SearchRepoi(ApiService(Dio()))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomSearchTextField(),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Result',
                style: Styles.textStyle20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //لازم نحط الليست فيو فى اكسباندد عشان انا حاططها فى كولم
            const Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      ),
    );
  }
}
