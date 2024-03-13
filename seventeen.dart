// mendefinisikan kelas Member untuk merepresentasikan anggota grup musik
class Member {
  String _name = "";  // atribut untuk menyimpan nama anggota
  String _position = "";  // atribut untuk menyimpan posisi anggota dalam grup

  // konstruktor untuk inisialisasi objek Member dengan nama dan posisi anggota
  Member(String name, String position) {
    this._name = name;
    this._position = position;
  }

  // setter dan getter untuk _name
  set name(String name) {
    this._name = name;
  }

  String get name {
    return _name;
  }

  // setter dan getter untuk _position
  set position(String position) {
    this._position = position;
  }

  String get position {
    return _position;
  }
}

// mendefinisikan kelas BoyGroup untuk merepresentasikan sebuah grup musik
class BoyGroup {
  String _groupName = "";  // atribut untuk menyimpan nama grup musik
  List<Member> _members = [];  // atribut untuk menyimpan daftar anggota grup

  // konstruktor untuk inisialisasi objek BoyGroup dengan nama grup dan daftar anggota
  BoyGroup(String groupName, List<Member> members) {
    this._groupName = groupName;
    this._members = members;
  }

  // setter dan getter untuk _groupName
  set groupName(String groupName) {
    this._groupName = groupName;
  }

  String get groupName {
    return _groupName;
  }

  // getter members untuk mendapatkan daftar anggota grup
  List<Member> get members {
    return _members;
  }

  // fungsi async untuk mengambil data anggota grup secara asynchronous
  Future<BoyGroup> addMembers() async {
    // menggunakan Future.delayed untuk mensimulasikan proses asynchronous
    await Future.delayed(Duration(seconds: 2));
    var members = [
      Member('S.Coups', 'Leader and Rapper'),
      Member('Jeonghan', 'Vocalist'),
      Member('Joshua', 'Vocalist'),
      Member('Jun', 'Dancer'),
      Member('Hoshi', 'Dancer'),
      Member('Wonwoo', 'Rapper'),
      Member('Woozi', 'Vocalist'),
      Member('DK', 'Vocalist'),
      Member('Mingyu', 'Rapper'),
      Member('The8', 'Dancer'),
      Member('Seungkwan', 'Vocalist'),
      Member('Vernon', 'Rapper'),
      Member('Dino', 'Dancer'),
    ];
    return BoyGroup('SEVENTEEN', members);  // mengembalikan objek BoyGroup dengan anggota yang telah diambil
  }
}

void main() async {
  var boyGroup = BoyGroup('SEVENTEEN', []);  // membuat objek BoyGroup
  var seventeen = await boyGroup.addMembers();  // mengambil data anggota grup secara asynchronous

  // mencetak informasi tentang grup dan anggotanya
  print('Say The Name, ${seventeen.groupName}! Hello, we are ${seventeen.groupName}!\n');
  for (var member in seventeen.members) {
    print('Hello, my name is ${member.name}. I am the ${member.position} of the group.');
  }
}