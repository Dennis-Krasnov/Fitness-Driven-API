import 'package:fitness_driven_api/user/prelude.dart';

/// Interface for user authentication and account management.
abstract class UserRepository {
  /// Notifies about changes to the user's sign-in state.
  /// Null denotes an unauthenticated user.
  Stream<UserInfo?> userInfoChanges();

  /// Sends a sign-in link with a code to provided email address.
  /// Returns exception message, if any.
  Future<String?> sendSignInLinkToEmail(String email);

  /// Signs in using a code.
  /// Returns exception message, if any.
  Future<String?> signInWithCode(String code);

  /// Signs out the current user.
  Future<void> signOut();
}
