import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth _firebaseAuth =
      FirebaseAuth.instance; //Instancia do firebaseAuth

  Future<String?> userRegister({
    required String nome,
    required String email,
    required String senha,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      );

      await userCredential.user!.updateDisplayName(nome);

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return "Usuário já cadastrado";
      }
      return "Erro desconhecido";
    }
  }

  Future<String?> userLogin(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    return null;
  }

  Future<void> userLogout() async {
    return _firebaseAuth.signOut();
  }
}
