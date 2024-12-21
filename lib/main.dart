import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/feature/home/data/repo/home_repo_impl.dart';
import 'package:bookly/feature/home/presentation/manger/featured%20books%20cubit/featured_cubit_cubit.dart';
import 'package:bookly/feature/home/presentation/manger/newset%20books%20cubit/newset_books_cubit.dart';
import 'package:bookly/feature/search/data/repo/search_repoI.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_list_cubit.dart';


import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';





void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return  MultiBlocProvider(
    
      providers:[
        BlocProvider(create: (context)=>FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio())))..fetchFeaturedBooks()),
        BlocProvider(create: (context)=>NewsetBooksCubit(HomeRepoImpl(ApiService(Dio())))..featchNewsetBooks()),
        BlocProvider(create: (context)=>SearchListCubit(SearchRepoi(ApiService(Dio())))..fetchRevelancBook())
      ],
    
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
          // textTheme:GoogleFonts.montserratTextTheme(),
          
        
      ),
    );
  }
  
}
