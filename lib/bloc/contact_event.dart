part of 'contact_bloc.dart';

sealed class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}


class ContactAddEvent extends ContactEvent {
  final TextEditingController name;
  final TextEditingController number;

  const ContactAddEvent({
    required this.name,
    required this.number,
  });

  @override
  List<Object> get props => [name, number];
}

class ContactDeleteEvent extends ContactEvent {
  final int index;

  const ContactDeleteEvent(this.index);

  @override
  List<Object> get props => [index];
}
