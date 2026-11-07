import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint('change =$change');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
   debugPrint('close =$bloc');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
     debugPrint('create =$bloc');
  }

  @override
  void onDone(
    Bloc<dynamic, dynamic> bloc,
    Object? event, [
    Object? error,
    StackTrace? stackTrace,
  ]) {

  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
  
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {

  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    
  }
}
