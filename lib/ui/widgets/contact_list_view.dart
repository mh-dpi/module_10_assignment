import 'package:contact_list/ui/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/contact_bloc.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state.contactList.isEmpty) {
            return Center(
                child: Text(
              'No contacts available.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ));
          }

          return ListView.builder(
            itemCount: state.contactList.length,
            itemBuilder: (context, index) {
              return ContactListItem(state: state, index: index);
            },
          );
        },
      ),
    );
  }
}
