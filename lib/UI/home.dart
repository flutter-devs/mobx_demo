import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:demo_new/counter.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Like & Dislike',
            style: TextStyle(
              fontSize: 20
            ),),
            Observer(builder: (BuildContext context) {
              return Text('${counter.count}',
                style: const TextStyle(
                  fontSize: 20
              ),);
            },),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: IconButton(
                    onPressed: counter.like,
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.white,),
                  
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: IconButton(
                    onPressed: counter.dislike,
                    icon: const Icon(Icons.thumb_down),
                    color: Colors.white,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
