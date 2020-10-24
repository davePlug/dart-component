import 'dart:math';
import 'package:intl/intl.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'MessageBox',
  templateUrl: 'block_template.html',
  styleUrls: ['block_style.css'],
  directives: [NgFor]
)
class MessageBox implements OnInit {
  int members, read_messages;
  String random_date;
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  void ngOnInit() async {
    this.generate_data();
  }

  void generate_data() {
    Random random = Random();
    this.members = random.nextInt(10) + 1;
    this.read_messages = random.nextInt(15) + 1;
    // This will generate a random date between 2010 and 2020
    this.random_date = formatter.format(DateTime(random.nextInt(10)+2010, random.nextInt(12), random.nextInt(31)));
  }
}
