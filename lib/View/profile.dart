import 'package:e_shopping_app/Widgets/textfield.dart';
import 'package:flutter/material.dart';

class ProfileSet extends StatelessWidget {
  const ProfileSet({super.key});

  @override
  Widget build(BuildContext context) {
   
return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
         const Text('Profile Setup',
          style: TextStyle(
            fontSize: 27,
            color: Color.fromARGB(232, 33, 149, 243),
            fontWeight: FontWeight.bold,
           ),
          ),
          
          const SizedBox(height: 15),

          const Text("Please fill be below details to complete\nyour profile",
          textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 9,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.4
           ),
          ),

          const SizedBox(height: 55),
          Stack(
            alignment: Alignment.bottomRight,
            children:[ 
              
              
              CircleAvatar(
              radius: 50,
              child: IconButton(
                onPressed:(){},
                icon:const Icon(
                  Icons.person,
                  size: 60,),
                  ),
            ),

              CircleAvatar(
              radius: 17,
              child: IconButton(
                onPressed:(){},
                icon:const Icon(
                  Icons.camera_alt,
                  size: 10,),
                  ),
            ),
          
          ]
        ),
          const SizedBox(height: 25),
          const SectionName(nameit: 'Full Name'),
          const SizedBox(height: 25),
          const SectionName(nameit: 'Phone Number',),
          const SizedBox(height: 25),
          const SectionName(nameit: 'Address',),
          
          const SizedBox(height:35),
          ElevatedButton(
          onPressed: (){
             
            }, 
             style: ButtonStyle(
             elevation:const MaterialStatePropertyAll(0),
             minimumSize: MaterialStateProperty.all<Size>(const Size(300, 55)),
             backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(232, 33, 149, 243)),
           ),
          
          child:const Text('Complete Setup',
          style: TextStyle(
            fontSize: 14,
            color:Colors.white,
            fontWeight: FontWeight.w600),
           ),
          ),
         
        ],
      ),
    );
  }
}