class PokemonModel {
  int id;
  String name;
  Status status;
  bool capture = false;

  PokemonModel({
    this.id,
    this.name,
    this.status,
    this.capture,
  });
}

class Status {
  int hp;
  int attack;
  int defense;
  int spAttack;
  int spDefense;
  int speed;

  Status(
      {this.hp,
      this.attack,
      this.defense,
      this.spAttack,
      this.spDefense,
      this.speed});
}
