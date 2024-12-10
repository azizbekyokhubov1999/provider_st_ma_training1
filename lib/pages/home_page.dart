import 'package:flutter/material.dart';
import 'package:provider_st_ma_training1/pages/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<int> numbers = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        child: Column(
          children: [
            Text(
              numbers.last.toString(),
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                  itemBuilder: (context, index){
                    return Text(
                      numbers[index].toString(),
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
                  => SecondPage(numbers: numbers))
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
            int last = numbers.last;
          setState(() {
            numbers.add(last + 1);
          });
          },
        child: Icon(Icons.add,
        color: Colors.white,
        ),

      ),
    );
  }
}
