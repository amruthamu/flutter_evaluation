class AnimationStates {
  late bool isSuccess;
  AnimationStates({required this.isSuccess});
}
class InitialState extends AnimationStates{
  InitialState():super(isSuccess: true);
}
class LoadAnimationState extends AnimationStates{
  LoadAnimationState():super(isSuccess: true);
}