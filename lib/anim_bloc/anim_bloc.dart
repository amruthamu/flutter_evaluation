import 'package:flutter_bloc/flutter_bloc.dart';
import 'anim_event.dart';
import 'anim_state.dart';

class CountBloc extends Bloc<AnimationEvents, AnimationStates>{
  CountBloc():super(InitialState()){
    on<AnimationEvents>((event, emit){
      if(event is StartAnimationEvent) {
        emit(LoadAnimationState());
      }
    });


  }
}