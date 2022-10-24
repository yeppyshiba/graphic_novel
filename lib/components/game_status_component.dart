import 'package:flame_oxygen/flame_oxygen.dart';

enum GameStatus {
  home,
  playing,
  ending,
  paused,
  credits,
  settings
}

class GameStatusComponent extends Component<GameStatus> {
  late GameStatus status;

  @override
  void init([GameStatus? data]) {
    status = data ?? GameStatus.home;
  }

  @override
  void reset() {
    status = GameStatus.home;
  }
}