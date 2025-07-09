void main() {
  Map<String, dynamic> credentials = {
    "email": "smammadali05@gmail.com",
    "password": 12342343,
    "country": "Pakistan",
    "gender": 'male'
  };

  print(credentials);

  mapToList() {
    return credentials.entries.map((e) {
      return e.key;
    }).toList();
  }

  myMapKey() => credentials.entries.map((e) => e.value).toList();
  print(mapToList());
  print(myMapKey());
}
