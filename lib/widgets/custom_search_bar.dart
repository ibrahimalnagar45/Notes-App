import 'package:flutter/material.dart';

class Searchfeild extends StatelessWidget {
  const Searchfeild({super.key, this.onSubmitted});
  final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(12)),
      child: TextField(
        onChanged: onSubmitted,
        cursorColor: Colors.blueGrey,
        decoration: const InputDecoration(
          // prefixIcon: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.search),
          //   color: Colors.black,
          // ),
          contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
