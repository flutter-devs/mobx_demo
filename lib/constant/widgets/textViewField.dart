import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef FieldValueChange = Function(String value);

class TextFieldView extends StatefulWidget {
  const TextFieldView({
    Key? key,
    required this.text,
    this.obsecure = false,
    this.isVisible = false,
    this.boxColor,
    this.turns = 0,
    this.keyboardType,
    // required this.onValidate,
    // required this.valueDidChange,
    this.textFieldController,
  }) : super(key: key);
  final String text;
  final bool obsecure, isVisible;
  final String? boxColor;
  final TextInputType? keyboardType;
  final int turns;
  // final Function(String? value) onValidate;
  // final FieldValueChange valueDidChange;
  final TextEditingController? textFieldController;

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  late bool _obsecure;

  @override
  void initState() {
    _obsecure = widget.obsecure;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(28)
        ),
        padding: const EdgeInsets.symmetric() +
            const EdgeInsets.only(left: 25, top: 13),
        margin: EdgeInsets.only(left: 20),
        child: Expanded(
            child: Center(
                child: TextFormField(
                    keyboardType: widget.keyboardType,
                    // cursorColor: ColorConstant.orangeColor,
                    controller: widget.textFieldController,
                    // validator: (val) => widget.onValidate(val),
                    // onChanged: widget.valueDidChange,
                    // style: AppTextStyle.text28,
                    obscureText: _obsecure,
                    decoration: InputDecoration(
                      suffixIcon: widget.isVisible
                          ? _obsecure
                          ? IconButton(
                          onPressed: () {
                            setState(() {
                              _obsecure = !_obsecure;
                            });
                          },
                          icon:
                          const Icon(Icons.visibility_off_outlined))
                          : IconButton(
                          onPressed: () {
                            setState(() {
                              _obsecure = !_obsecure;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye))
                          : null,
                      border: InputBorder.none,
                      hintText: widget.text,
                      // hintStyle: AppTextStyle.text28,
                    )
                )
            )
        )
    );
  }
}