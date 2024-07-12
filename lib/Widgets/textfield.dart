import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  final String nameit;
  const SectionName({super.key, required this.nameit});

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
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
