import 'toilet.dart';
import 'fee.dart';
import 'review.dart';

/*asdf*/
class RestRoomInfo
{
  List<Toilet> _toilets;
  List<Fee> _fees;

  List<Toilet> get toilets => _toilets;

  set toilets(List<Toilet> value) {
    _toilets = value;
  }

  RestRoomType _type;

  List<Fee> get fees => _fees;

  set fees(List<Fee> value) {
    _fees = value;
  }

  RestRoomType get type => _type;

  set type(RestRoomType value) {
    _type = value;
  }
}