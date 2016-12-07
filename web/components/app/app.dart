import 'package:angular2/core.dart' show Component;
import 'package:angular2_components/angular2_components.dart'
    show materialDirectives;
import 'package:material_menu/material_menu.dart';
import 'package:material_sidenav/material_sidenav.dart';
import 'package:material_toolbar/material_toolbar.dart';

@Component(selector: 'example-app', templateUrl: 'app.html', styleUrls: const [
  'app.css'
], directives: const [
  materialDirectives,
  menuDirectives,
  MaterialSidenavComponent,
  MaterialToolbarComponent
])
class AppComponent {
  bool open = false, right = false;
  bool overlay = true;
}
