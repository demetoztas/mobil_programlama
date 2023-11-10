class Camera {

  int _id;
  String _name;
  double _prize;

  Camera(this._id,this._name,this._prize);

  int get id => this._id;
  String get name => this._name;
  double get prize => this._prize;

  set id(int id) => this._id =id;
  set name(String name)=> this._name;
  set prize(double prize)=> this._prize;

  void display(){

    print("camera1 id:  $id" );
    print("camera name:$name ");
    print("camera prize: $prize");
  }



}

void main(){

  Camera camera1 = Camera(1, "DJI mini pro", 12332.0);
  Camera camera2 = Camera(3, "DJI osmo mobile", 12234.0);
  Camera camera3 = Camera(2, "GOPRO Hero 11", 324122.0);
  camera1.display();
  camera2.display();
  camera3.display();
  
}