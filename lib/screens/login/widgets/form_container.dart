import 'package:animation/screens/login/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          child: Column(
            children: [
                InputField(
                    icon: Icons.person_outline,
                    hint: "Username",
                    obscure: false
                ),
                InputField(
                    icon: Icons.lock_outlined,
                    hint: "Passworld",
                    obscure: true
                ),
            ],
          )
      ),
    );
  }
}
