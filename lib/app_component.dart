import 'package:angular/angular.dart';

import 'block/block_component.dart';

@Component(
  selector: 'dash-block',
  templateUrl: 'app_template.html',
  styleUrls: ['app_style.css'],
  directives: [NgFor, MessageBox]
)
class AppComponent  {
  var myComponents = [1];

  addCmp() {
    myComponents.add(1);
  }
}
