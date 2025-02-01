import 'package:contact_list/ui/pages/home_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'bloc/contact_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BlocProvider(
        create: (context) => ContactBloc(),
        child: HomeActivity(),
      ),
    );
  }
}
