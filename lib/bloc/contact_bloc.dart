import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:contact_list/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<ContactAddEvent>((event, emit) {
      _contactAddEvent(event, emit);
    });

    on<ContactDeleteEvent>((event, emit) {
      _contactDeleteEvent(event, emit);
    });
  }

  void _contactDeleteEvent(ContactDeleteEvent event, Emitter<ContactState> emit) {
    final newContactList = List<Contact>.from(state.contactList)
      ..removeAt(event.index);
    emit(ContactUpdate(
      contactList: newContactList,
    ));
  }

  void _contactAddEvent(ContactAddEvent event, Emitter<ContactState> emit) {
       if (event.name.text.isEmpty == true) {
      if (kDebugMode) {
        print("Enter Your Name Please");
      }
    } else {
      if (event.number.text.isEmpty == true) {
        if (kDebugMode) {
          print("Enter Your Number Please");
        }
      } else {
        final newContact =
            Contact(name: event.name.text, number: event.number.text);
        final newContactList = List<Contact>.from(state.contactList)
          ..add(newContact);
        emit(ContactUpdate(contactList: newContactList));
        event.name.clear();
        event.number.clear();
      }
    }
  }
}
