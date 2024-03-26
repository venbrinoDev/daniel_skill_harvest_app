import 'package:flutter/material.dart';

class EmailTextFild extends StatelessWidget {
  const EmailTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        label: Text('Email'),
        labelStyle: TextStyle(color: Colors.grey),
        hintText: 'Enter your email',
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(15)
            ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool toggled = false;
  @override 
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(color: Colors.black),
      obscureText: toggled,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: toggled
              ? const Icon(
                 Icons.visibility_off, color: Colors.black,
                 ):
                const Icon(
              Icons.visibility, color: Colors.black,),
           onPressed: () { setState(() {
             toggled = !toggled;
           }); 
           },
           ),        

        label: Text('Password'),
        labelStyle: TextStyle(color: Colors.grey),
        hintText: 'Enter your password',
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

