
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:contact_list/Contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contactList: [], contactItem: Contact(name: '', number: ''))) {
    on<ContactNameOnChangeEvent>((event, emit) {
      emit(ContactInitial(
        contactList: state.contactList,
        contactItem: state.contactItem.copyWith(name: event.value),
      ));
    });

    on<ContactNumberOnChangeEvent>((event, emit) {
      emit(ContactInitial(
        contactList: state.contactList,
        contactItem: state.contactItem.copyWith(number: event.value),
      ));
    });

    on<ContactAddEvent>((event, emit) {
      if (state.contactItem.name.isNotEmpty && state.contactItem.number.isNotEmpty) {
        final newContactList = List<Contact>.from(state.contactList)
          ..add(state.contactItem);
        emit(ContactInitial(
          contactList: newContactList,
          contactItem: state.contactItem,
        ));
      }
    });

    on<ContactDeleteEvent>((event, emit) {
      final newContactList = List<Contact>.from(state.contactList)
        ..removeAt(event.index);
      emit(ContactInitial(
        contactList: newContactList,
        contactItem: state.contactItem,
      ));
    });
  }
}
