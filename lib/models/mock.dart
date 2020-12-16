import 'ability.dart';
import 'character.dart';

var CHARTYPE = [
  'Guerrero',
  'Mago',
  'Apoyo',
  'Tanque',
  'Criatura',
];

var ABITYPE = [
  'Ataque',
  'Estado',
];

Character sora = Character(
    name: 'Sora',
    description: 'Portador de Llave Espada',
    type: 'Guerrero',
    abil1: 'Piro');
Character pikachu = Character(
    name: 'Pikachu',
    description: 'Pokémon ratón eléctrico',
    type: 'Criatura',
    abil1: 'Impactrueno');
Character aerith = Character(
    name: 'Aerith', description: 'Apoyo de FF7', type: 'Apoyo', abil1: 'Cura');

var CHARACTER = [sora, pikachu, aerith];

Ability piro = Ability(
    name: 'Piro',
    description: 'Magia leve de fuego',
    type: 'Ataque',
    power: 10,
    accuracy: 75);

Ability impactrueno = Ability(
    name: 'Impactrueno',
    description: 'Ataque de tipo eléctrico pokémon',
    type: 'Ataque',
    power: 40,
    accuracy: 100);

Ability cura = Ability(
    name: 'Cura',
    description: 'Magia leve de curación',
    type: 'Estado',
    accuracy: 100);

var ABILITY = [piro, impactrueno, cura];

var ABILNAMES = ['Piro', 'Impactrueno', 'Cura'];
