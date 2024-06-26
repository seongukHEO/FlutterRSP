const assetPath = 'assets/images';

enum InputType{
  rock,
  scissors,
  paper;


  String get path => '$assetPath/${this.name}.png';
}