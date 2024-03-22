import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InheritedUser extends InheritedWidget {
  InheritedUser({super.key, required super.child});


  static InheritedUser? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedUser>();
  }

  String userLogado = "";

  void updateUser(String nome){
    userLogado = nome;
  }

  static InheritedUser of(BuildContext context) {
    final InheritedUser? result = maybeOf(context);
    assert(result != null, 'No InheritedUser found in context');
    return result!;
  }

  @override
  //Verifica se o estado da informação esta mudando ou não
  bool updateShouldNotify(InheritedUser oldWidget) =>  userLogado != oldWidget.userLogado;
}