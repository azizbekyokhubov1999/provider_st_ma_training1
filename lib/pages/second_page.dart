import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final List<int> numbers;
   SecondPage({
     super.key,
     required this.numbers
   });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
              widget.numbers.last.toString(),
              style: TextStyle(
                  fontSize: 30
              ),
            ),
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: widget.numbers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Text(
                      widget.numbers[index].toString(),
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
          int last = widget.numbers.last;
          setState(() {
            widget.numbers.add(last + 1);
          });
        },
        child: Icon(Icons.add,
          color: Colors.white,
        ),

      ),
    );;
  }
}
