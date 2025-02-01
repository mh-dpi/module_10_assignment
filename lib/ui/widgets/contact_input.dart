import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/contact_bloc.dart';
import '../../style.dart';


class ContactInput extends StatelessWidget {
  const ContactInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         TextField(
           onChanged: (value) {
             context.read<ContactBloc>().add(ContactNameOnChangeEvent(value));
           },
          decoration: inputDecoration(
            fieldName: "Name",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         TextField(
           onChanged: (value) {
             context.read<ContactBloc>().add(ContactNumberOnChangeEvent(value));
           },
          decoration: inputDecoration(fieldName: "Number"),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: (){
            context.read<ContactBloc>().add(ContactAddEvent());
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
