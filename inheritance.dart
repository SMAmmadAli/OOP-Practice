//              INHERITANCE
// ----------------------------------------

// Child class used some properties or method from parent class
// using extend keyword.

// Super keyword:- its used in child class to extract parent properties.

// -----------------------------------------
// Parent Class (Base, super & parent class)
//                  |
//                  |
//                  |
//                  |
// Child Class (sub, derived & child class)

void main() {
  // Player player = Player(batsman: "Rohit Sharma", bowler: "Mitchell Strac");
  // player.playerDetail();

  PlayerTeam playerTeam =
      PlayerTeam(batsman: "Rohit Sharma", bowler: "Mitchell Strac");
  playerTeam.playerDetail();
  playerTeam.role = "Captain";
  playerTeam.country = "India";
  playerTeam.showCountry();

  print("""------------------------------------------------
------------------------------------------------
------------------------------------------------
  """);

  OriginalTeam originalTeam =
      OriginalTeam(batsman: "Rohit Sharma", bowler: "Mitchell Strac");
  originalTeam.country = "India";
  originalTeam.BatsmanTeam();
  originalTeam.country = "Australia";
  originalTeam.BatsmanTeam();
}

class Player {
  //  properties || Fields
  final String? batsman;
  final String? bowler;
  String? role;

  // Attributes

  Player({required this.batsman, required this.bowler});

  // method == function

  void playerDetail() {
    print("Batsman name : $batsman");
    print("Bowler name : $bowler");
  }
}

class PlayerTeam extends Player {
  PlayerTeam({required super.batsman, required super.bowler});

  late String? country;

  void showCountry() {
    print("$country Team");
  }
}

class OriginalTeam extends PlayerTeam {
  OriginalTeam({required super.batsman, required super.bowler});

  void BatsmanTeam() {
    print("Batsman name : $batsman ${super.country} Team");
  }

  void BowlerTeam() {
    print("Bowler name : $bowler ${super.country} Team");
  }
}
