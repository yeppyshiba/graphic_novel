import 'package:flame_oxygen/flame_oxygen.dart';
import 'package:graphic_novel/components/game_status_component.dart';
import 'package:graphic_novel/graphic_novel.dart';

class GameStatusSystem extends System with UpdateSystem, GameRef<GraphicNovel> {
  Query? _query;
  GameStatus _lastStatus = GameStatus.home;

  List<Entity> get entities => _query?.entities ?? [];

  @override
  void init() {
    _query = createQuery([Has<GameStatusComponent>()]);
  }

  @override
  void dispose() {
    _query = null;
    super.dispose();
  }

  @override
  void update(double delta) {
    for (final entity in entities) {
      var newStatus = entity.get<GameStatusComponent>()!.status;
      if (newStatus != _lastStatus) {
        _unloadStatus(_lastStatus);
        _lastStatus = newStatus;
        _loadStatus(newStatus);
      }
    }
  }

  void _unloadStatus(GameStatus status) {
    // TODO
  }

  void _loadStatus(GameStatus status) {
    // TODO
  }
}