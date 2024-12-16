import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
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
              'Best Seller',
              style: Styles.textStyle20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

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
           Column(
            children: [
              SizedBox(
                width:MediaQuery.of(context).size.width*.5 ,
                child: const Text(
                  'Harry Poter and the Goblet of Fire ',
                  style: Styles.textStyle20,
                  maxLines: 2,//عدد الاسطر لا يزيد عن 2
                  overflow: TextOverflow.ellipsis,//لو عندى زياده فى العنوان ينتهى بنقط ....عرض المزيد
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
