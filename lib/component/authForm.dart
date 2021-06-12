import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  final String hintText;
  final String errorText;
  final Function onTap;
  final Function validator;
  final Function onChanged;
  final bool canEdit;
  final bool isPassword;
  final Widget icon;
  final int maxLines;
  final TextEditingController controller;
  const AuthForm({
    this.hintText,
    this.errorText,
    this.onTap,
    this.validator,
    this.onChanged,
    this.canEdit,
    this.isPassword,
    this.icon,
    this.controller,
    this.maxLines,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: this.validator,
      onChanged: this.onChanged,
      controller: this.controller != null ? this.controller : null,
      // textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
      ),
      maxLines: this.maxLines !=null ? this.maxLines : 1,
      obscureText: isPassword == null ? false: true,
      decoration: InputDecoration(
        errorText: this.errorText != null ? this.errorText : null,
        hintText: this.hintText,
        hintStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
        ),
        fillColor: Color(0xffE3E3E3),
        filled: true,
        suffixIcon: this.icon == null ? null : this.icon,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.only(top: 10,bottom: 6, left: 16, right: 16),
      ),
      onTap: this.onTap,
      readOnly: this.canEdit ==null? false : true,
    );
  }
}
