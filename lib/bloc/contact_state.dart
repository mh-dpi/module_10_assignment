part of 'contact_bloc.dart';

sealed class ContactState extends Equatable {
  List<Contact> contactList;
  Contact contactItem;

  ContactState({
    required this.contactList,
    required this.contactItem,
  });

  @override
  List<Object> get props => [contactList,contactItem];
}

final class ContactInitial extends ContactState {
  ContactInitial({required super.contactList, required super.contactItem});


}
