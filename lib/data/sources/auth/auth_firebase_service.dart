import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';

import '../../models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<Either> signin(SigninUserRequest signinUserRequest);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signin(SigninUserRequest signinUserReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signinUserReq.email, password: signinUserReq.password);
      return const Right('Signin was Successful');
    } on FirebaseAuthException catch (e) {
      String message='Email or password is incorrect';
      if(e.code=='user-not-found'){
        message='No user found for email';
      }else if(e.code=='wrong-password'){
        message= 'Wrong password provided for user';
      }
      return Left(message);
    }
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);
      return const Right('Signup was Successful');
    } on FirebaseAuthException catch (e) {
       String message='';
       if(e.code=='weak-password'){
         message='The password provided is too weak';
       }else if(e.code=='email-already-in-use'){
         message= 'An account already exists with that email.';
       }
       return Left(message);
    }
  }
}
