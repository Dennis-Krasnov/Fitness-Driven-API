import 'package:equatable/equatable.dart';

/// User account attributes.
class UserInfo extends Equatable {
  final String userId;
  final String email;
  final bool paidUser;

  UserInfo({required this.userId, required this.email, this.paidUser = false});

  @override
  List<Object> get props => [userId, email, paidUser];

  @override
  bool get stringify => true;
}
