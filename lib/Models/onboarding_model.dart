
class OnboardingModel
{
  String _image;
  String _title;
  String _desc;

  OnboardingModel(this._image, this._title, this._desc);

  String get desc => _desc;

  String get title => _title;

  String get image => _image;
}

var contents=[
  OnboardingModel(
      "assets/images/Account-rafiki.png",
      "Unlock all Features",
      "Get all the latest Signals, News, Hidden Gems and Airdrops from our Expert Traders!"),

  OnboardingModel(
      "assets/images/Subscriptions-rafiki.png",
      "All Important News",
      "We keep an eye on the news so you don't have to. We share all the important News with our Subscribers on a daily basis."),
  
  OnboardingModel(
      "assets/images/Charts-rafiki.png",
      "Trading Signals",
      "Our team gives the best trading signals for Futures and Spot Trading with a record 96% Accuracy")
  
];