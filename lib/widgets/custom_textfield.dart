import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.withborder = true,
      required this.hintText,
      required this.fontSize});
  final bool withborder;
  final String hintText;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      onSubmitted: (data) {},
      decoration: InputDecoration(
        focusedBorder: withborder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              )
            : InputBorder.none,
        enabledBorder: withborder == true
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.5),
                ),
              )
            : InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: fontSize, color: Colors.white),
      ),
    );
  }
}

/**Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView(children: [
              TextField(
                onSubmitted: (data) {},
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(.5))),
                  hintText: "Title",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "descrption",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(.7))),
                ),
              ),
            ]),
          ),
          GestureDetector(
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 200,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.7),
                borderRadius: BorderRadius.circular(23),
              ),
              child: const Center(
                  child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    ); */