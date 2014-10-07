import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('t-stopwatch')
class Stopwatch extends PolymerElement {
  @observable String counter = '00:00';
  
  Stopwatch.created() : super.created();
  
  @override
  void attached() {
    super.attached();
    startButton = $['startButton'];
    stopButton = $['stopButton'];
    resetButton = $['resetButton'];
    
    stopButton.disabled = true;
    resetButton.disabled = true;
  }
  
  void updateTime(Timer _) {
    counter = '$minute:$second';
  }
  
  void start(Event e, var detail, Node target) {
    mywatch.start();
    var oneSecond = new Duration(seconds:1);
    myTimer = new Timer.periodic(oneSecond, updateTimer);
    startButton.disabled = true;
    stopButton.disabled = false;
    resetButton.disabled = true;
    
  }
}

void main() {
  
}

