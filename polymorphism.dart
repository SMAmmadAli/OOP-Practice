//              POLYMORPHISM
// ----------------------------------------

// ek object/instance jo multiple form le sakta hai.

void main() {
  // Cricket cricket = Cricket();
  // cricket.batsman();

  Cricket cricket = Captain();
  cricket.batsman();

  Cricket ammad = ViceCaptain();
  ammad.batsman();
}

class Cricket {
  void batsman() {
    print("bats & glove");
  }
}

class Captain extends Cricket {
  @override
  void batsman() {
    super.batsman();
    print("Babar Azam");
  }
}

class ViceCaptain extends Cricket {
  @override
  void batsman() {
    print("Virat Kholi");
  }
}
