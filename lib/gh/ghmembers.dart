library ghmembers;

//import 'package:copy_linkedin/myhomebody.dart';

/*class Member {
  final String login;

  Member(this.login) {
    if (login == null) {
      throw ArgumentError("login of Member cannot be null. "
          "Received: '$login'");
    }
  }
}
 */

class Member {
  final String login;
  final String nodeid;
  final String avatarUrl;

  Member(this.login, this.nodeid, this.avatarUrl) {
    if (login == null) {
      throw ArgumentError("login of Member cannot be null. "
          "Received: '$login'");
    }
    if (nodeid == null) {
      throw ArgumentError("login of Member cannot be null. "
          "Received: '$login'");
    }
    if (avatarUrl == null) {
      throw ArgumentError("avatarUrl of Member cannot be null. "
          "Received: '$avatarUrl'");
    }
  }
}

/*class GHMembers{
  final String nameurl;
  final String avtarurl;
  GHMembers({this.nameurl,this.avtarurl});
  factory GHMembers.fromJson(Map<String,dynamic> json){
    return GHMembers(
      nameurl: json['login']
    )
  }


}*/

/*class Member {
  final String login;

  Member(this.login) {
    if (login == null) {
      throw ArgumentError("login of Member cannot be null. "
          "Received: '$login'");
    }
  }
}
 */
