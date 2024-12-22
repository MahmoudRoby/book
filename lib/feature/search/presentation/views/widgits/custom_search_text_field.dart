import 'package:bookly/feature/search/presentation/manager/cubit/search_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {
        if (value.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter a vaid name')));
        } else {
          context.read<SearchListCubit>().fetchRevelancBook(controller.text);
          //SearchListCubit(SearchRepoi(ApiService(Dio()))).fetchRevelancBook(controller.text);
        }
      },
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(12)),
          hintText: 'Write searching book name',
          label: const Text('Search'),
          suffixIcon: const Icon(Icons.search)),
    );
  }
}
