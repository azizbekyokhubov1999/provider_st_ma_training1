import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_st_ma_training1/pages/second_page.dart';
import 'package:provider_st_ma_training1/provider/list_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) =>
     Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body:  SizedBox(
            child: Column(
              children: [
                Text(
                  numbersProviderModel.numbers.last.toString(),
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                      itemBuilder: (context, index){
                        return Text(
                         numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(
                          fontSize: 30
                        ),
                        );
                      }),
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context)
                      => SecondPage())
                      );
                    },
                    child: Text("Go to Second Page"
                    )
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
    );
  }
}
