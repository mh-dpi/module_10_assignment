import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/contact_bloc.dart';
import '../../style.dart';

class ContactInput extends StatelessWidget {
  const ContactInput({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController numberController = TextEditingController();
    return Column(
      children: [
        TextField(
          controller: nameController,
          decoration: inputDecoration(
            fieldName: "Name",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: numberController,
          keyboardType: TextInputType.phone,
          decoration: inputDecoration(fieldName: "Number"),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            context.read<ContactBloc>().add(ContactAddEvent(
                  name: nameController,
                  number: numberController,
                ));
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: Text(
              "Add",
              style: elevatedButtonTextStyle,
            ),
          ),
        )
      ],
    );
  }
}
