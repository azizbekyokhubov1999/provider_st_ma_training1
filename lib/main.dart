import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_st_ma_training1/pages/home_page.dart';
import 'package:provider_st_ma_training1/provider/list_provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true
        ),
        home: HomePage(),
      ),
    );
  }
}
