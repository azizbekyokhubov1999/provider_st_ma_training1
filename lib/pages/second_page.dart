import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_st_ma_training1/provider/list_provider.dart';

class SecondPage extends StatefulWidget {

   const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) =>
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numbersProviderModel.numbers.last.toString(),
                style: TextStyle(
                    fontSize: 30
                ),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Text(
                        numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(
                            fontSize: 30
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: (){
            numbersProviderModel.add();
          },
          child: Icon(Icons.add,
            color: Colors.white,
          ),

        ),
      ),
    );;
  }
}
