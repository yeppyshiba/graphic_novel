import 'package:flame/events.dart';
import 'package:flame_oxygen/flame_oxygen.dart';
import 'package:graphic_novel/systems/background_system.dart';
import 'package:graphic_novel/systems/game_status_system.dart';
import 'package:graphic_novel/systems/sprite_system.dart';

class GraphicNovel extends OxygenGame with TapDetector {
  @override
  Future<void> init() async {
    world
      ..registerSystem(BackgroundSystem())
      ..registerSystem(SpriteSystem())
      ..registerSystem(GameStatusSystem());
  }
}