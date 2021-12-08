import 'package:qr_app/data/start_end_time.dart';

class KeyInfo {
  final String campus, number;
  final List<StartEndTime> times;

  const KeyInfo(this.campus, this.number, this.times);
}