import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class buildTextFormField extends StatefulWidget {
  const buildTextFormField(
      {this.controller,
      this.lebalText,
      this.textInputType,
      this.textInputAction,
      this.inputFormatter,
      this.validator,
      this.onSaved,
      this.onTap,
      super.key});
  final TextEditingController? controller;
  final String? lebalText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatter;
  final String? Function(String? value)? validator;
  final String? Function(String? value)? onSaved;
  final Future? Function()? onTap;
  @override
  State<buildTextFormField> createState() => _buildTextFormFieldState();
}

class _buildTextFormFieldState extends State<buildTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.inputFormatter,
      decoration: InputDecoration(
        labelText: widget.lebalText,
        labelStyle: GoogleFonts.poppins(fontSize: 15),
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
      onTap: widget.onTap,
    );
  }
}
