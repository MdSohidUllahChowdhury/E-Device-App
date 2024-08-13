import 'package:flutter/material.dart';

class LAnguage extends StatelessWidget {
  const LAnguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text('Change Language'),
          const  Divider(height: 50,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ElevatedButton(
                onPressed: (){}, 
               
                style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(const Size(80, 45)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
               ),
                         child:const Text('Bangla',
                         style: TextStyle(fontSize: 12,color:Colors.black),
                         ),
                         ),
              ElevatedButton(
          onPressed: (){}, 

            style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(const Size(80, 45)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
           ),
          child:const Text('English',
          style: TextStyle(fontSize: 12,color:Colors.black),
          ),
          )           
             ],
           )
          ],
        ),
      ),
    );
  }
}