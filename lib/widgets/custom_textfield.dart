import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.withborder = true,
      required this.hintText,
      required this.fontSize,
      required this.maxLine,
      this.onSaved,
      this.onChanged});
  final bool withborder;
  final String hintText;
  final double fontSize;
  final int maxLine;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this is a required field";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      keyboardType: TextInputType.multiline,
      maxLines: maxLine,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(left: 10, right: 0, top: 0, bottom: 0),
        focusedBorder: withborder
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              )
            : InputBorder.none,
        enabledBorder: withborder
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white.withOpacity(.3),
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