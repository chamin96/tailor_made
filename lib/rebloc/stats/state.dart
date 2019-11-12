import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tailor_made/models/stats/stats.dart';
import 'package:tailor_made/rebloc/app_state.dart';

part 'state.g.dart';

abstract class StatsState implements Built<StatsState, StatsStateBuilder> {
  factory StatsState([StatsState updates(StatsStateBuilder b)]) = _$StatsState;

  factory StatsState.initialState() => _$StatsState(
        (StatsStateBuilder b) => b
          ..stats = null
          ..status = StateStatus.loading
          ..message = ""
          ..error = null,
      );

  StatsState._();

  @nullable
  StatsModel get stats;

  StateStatus get status;

  String get message;

  @nullable
  String get error;

  static Serializer<StatsState> get serializer => _$statsStateSerializer;
}