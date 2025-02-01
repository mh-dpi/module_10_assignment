
import 'package:contact_list/ui/widgets/contact_input.dart';
import 'package:contact_list/ui/widgets/contact_list_view.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ContactInput(),
            SizedBox(
              height: 30,
            ),
           ContactListView()
          ],
        ),
      ),
    );
  }


}
