import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          //,لو انا عاوز اعملها زى اللى فوق توبوكس لازم اعمل بناء لليست كلها وده طبعا هيأثر على اداء التطبيق
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListViewItem(),
            );
          },
        );
  }
}
