import 'package:equatable/equatable.dart';

class ConditionEntity extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  const ConditionEntity({
    this.text,
    this.icon,
    this.code,
  });

  @override
  List<Object?> get props => [
        text,
        icon,
        code,
      ];
}
