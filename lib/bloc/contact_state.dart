part of 'contact_bloc.dart';

sealed class ContactState extends Equatable {
  final List<Contact> contactList;

  const ContactState({
    required this.contactList,
  });

  @override
  List<Object> get props => [contactList];
}

final class ContactInitial extends ContactState {
  const ContactInitial({
     super.contactList=const[],
  });
}

final class ContactUpdate extends ContactState {
  const ContactUpdate({required super.contactList});
}