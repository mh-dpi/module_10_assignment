part of 'contact_bloc.dart';

sealed class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class ContactNameOnChangeEvent extends ContactEvent {
  final String value;

  const ContactNameOnChangeEvent(this.value);

  @override
  List<Object> get props => [value];
}

class ContactNumberOnChangeEvent extends ContactEvent {
  final String value;

  const ContactNumberOnChangeEvent(this.value);

  @override
  List<Object> get props => [value];
}

class ContactAddEvent extends ContactEvent {}

class ContactDeleteEvent extends ContactEvent {
  final int index;

  const ContactDeleteEvent(this.index);

  @override
  List<Object> get props => [index];
}
