import 'package:flutter_bloc/flutter_bloc.dart';
import 'anim_event.dart';
import 'anim_state.dart';

class AnimBloc extends Bloc<AnimationEvent, AnimationState> {
  AnimBloc() : super(InitialState()) {
    on<AnimationBeginEvent>((event, emit) {
      emit(AnimationShowingState());
    });
  }
}
