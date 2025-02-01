import 'package:contact_list/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ContactListItem extends StatelessWidget {
  final ContactState state;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Container(
        color: Colors.grey.withValues(alpha: 0.3),
        child: ListTile(
          title: Text(
            state.contactList[index].name,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            state.contactList[index].number,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          leading: Icon(
            Icons.person,
            size: 30,
            color: Colors.black,
          ),
          trailing: Icon(
            Icons.phone,
            size: 30,
            color: Colors.blueAccent,
          ),
          onLongPress: () {
            showDialog(context, index);
          },
        ),
      ),
    );
  }

  const ContactListItem({
    super.key,
    required this.state,
    required this.index,
  });
  void showDialog(BuildContext context, int index) {
    Get.dialog(
      AlertDialog(
        title: Text('Confirmation'),
        content: Text('Are you sure for delete?'),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.browser_not_supported_outlined),
          ),
          IconButton(
            onPressed: () {
              context.read<ContactBloc>().add(ContactDeleteEvent(index));
              Get.back();
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
