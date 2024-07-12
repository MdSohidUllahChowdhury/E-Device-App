import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  final String nameit;
  final bool? forpassword;
  
  const SectionName({super.key, required this.nameit, this.forpassword});

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: forpassword ?? false,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(213, 190, 186, 186),
                hintText: nameit,
                hintStyle:const TextStyle(
                  fontSize: 10,),
                contentPadding: const EdgeInsets.all(12),
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,),          
              ),
            ),
          );
}
  }
