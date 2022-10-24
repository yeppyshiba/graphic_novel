import 'package:flame/extensions.dart';
import 'package:flame_oxygen/flame_oxygen.dart';

class SpriteSystem extends BaseSystem {
  @override
  List<Filter<Component>> get filters => [Has<SpriteComponent>()];

  @override
  void renderEntity(Canvas canvas, Entity entity) {
    final size = entity.get<SizeComponent>()!.size;
    final sprite = entity.get<SpriteComponent>()?.sprite;

    sprite?.render(canvas, size: size);
  }
}