import 'package:angular2/platform/browser.dart' show bootstrap;
import 'package:angular2_components/angular2_components.dart' show materialProviders;
import 'components/app/app.dart';

main() => bootstrap(AppComponent, [materialProviders]);