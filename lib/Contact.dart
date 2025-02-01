import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  String name;
  String number;

  Contact({
    required this.name,
    required this.number,
  });

  Contact copyWith({
    String? name,
    String? number,
  }) {
    return Contact(
      name: name ?? this.name,
      number: number ?? this.number,
    );
  }

  @override
  List<Object> get props => [name, number];
}
