import 'package:angular2/core.dart' show Component, EventEmitter, Input, Output;

@Component(
    selector: 'material-sidenav',
    templateUrl: 'material_sidenav.html',
    styleUrls: const ['material_sidenav.css'])
class MaterialSidenavComponent {
  @Input()
  String background = '#fff';

  @Input()
  bool open = false, right = false;

  @Input()
  bool overlay = true;

  @Output()
  final EventEmitter<bool> openChange = new EventEmitter<bool>();

  void close() {
    openChange.add(open = false);
  }
}
