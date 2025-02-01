part of 'contact_bloc.dart';

sealed class ContactState extends Equatable {
 final List<Contact> contactList;
 final Contact contactItem;

 const ContactState({
    required this.contactList,
    required this.contactItem,
  });

  @override
  List<Object> get props => [contactList,contactItem];
}

final class ContactInitial extends ContactState {
 const ContactInitial({required super.contactList, required super.contactItem});


}
