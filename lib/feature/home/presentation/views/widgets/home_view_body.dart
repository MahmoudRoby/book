import 'package:bookly/core/utils/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view.dart';


import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedListView(),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Newest Books',
                    style: Styles.textStyle20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          )
        )
      ],
    );
  }
}
