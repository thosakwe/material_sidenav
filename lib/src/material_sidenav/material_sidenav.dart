import 'dart:async';
import 'package:angular2/core.dart' show Component, Input, OnDestroy, Output;
import 'package:angular_components/src/utils/async/src/lazy_stream_controller.dart';

@Component(
    selector: 'material-sidenav',
    templateUrl: 'material_sidenav.html',
    styleUrls: const ['material_sidenav.css'])
class MaterialSidenavComponent implements OnDestroy {
  @Input()
  String background = '#fff';

  @Input()
  bool open = false, right = false;

  @Input()
  bool overlay = true;

  final StreamController<bool> _openChange =
      new LazyStreamController<bool>.broadcast();

  @Output()
  Stream<bool> get openChange => _openChange.stream;

  void close() {
    _openChange.add(open = false);
  }

  @override
  ngOnDestroy() {
    _openChange.close();
  }
}
