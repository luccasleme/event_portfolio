import 'package:portfolio/models/event.dart';

class EventRepository {
  static List<Event> table = [
    Event(
      image: "images/american_football.jpg",
      name: "American Football",
      data: '19/11/23',
      price: 470.0,
    ),
    Event(
      image: "images/kendrick_lamar.jpg",
      name: "Kendrick Lamar",
      data: '5/11/23',
      price: 390.0,
    ),
    Event(
      image: "images/terra_plana.jpg",
      name: "Terra Plana",
      data: '19/11/23',
      price: 470.0,
    ),
    Event(
      image: "images/titas.png",
      name: "Titãs",
      data: '23/12/23',
      price: 100.0,
    ),
    Event(
      image: "images/nxzero.png",
      name: "NX ZERO",
      data: '15/12/23',
      price: 174.0,
    ),
    Event(
      image: "images/restart.png",
      name: "Restart",
      data: '07/10/23',
      price: 174.0,
    ),
    Event(
      image: "images/pmc.jpg",
      name: "Paul McCartney",
      data: '30/11/23',
      price: 174.0,
    ),
  ];
}
