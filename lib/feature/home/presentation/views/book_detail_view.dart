import 'package:bookly/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_detail_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    BlocProvider.of<SimillarBooksCubit>(context).fetchSimillarBooks(category: widget.bookModel.volumeInfo.categories![0]);
        
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailBody(
        bookModel:widget.bookModel,
      ),
    );
  }
}
