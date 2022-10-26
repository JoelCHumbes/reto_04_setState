class Data{

   final List<Map<String,dynamic>> _data =[
    {
      "id": 1,
      "place":"Santorine",
      "country":"Grece",
      "rate":5,
      "reviews":2123,
      "title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "overview":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      "price":544.50,
      "days":2,
      "image":"https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",


    },

    {
      "id": 2,
      "place":"Torine",
      "country":"Grece",
      "rate":2,
      "reviews":2123,
      "title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "overview":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      "price":44.50,
      "days":2,
      "image":"https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",


    },

    {
      "id": 3,
      "place":"Marto",
      "country":"Grce",
      "rate":1,
      "reviews":2123,
      "title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "overview":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      "price":54.50,
      "days":2,
      "image":"https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",


    },

    {
      "id": 4,
      "place":"Myur",
      "country":"Gce",
      "rate":1,
      "reviews":123,
      "title":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      "overview":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
      "price":77.70,
      "days":4,
      "image":"https://images.pexels.com/photos/1285625/pexels-photo-1285625.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",


    },

  ];

   Future<List<Map<String,dynamic>>> fetchData() async{
    return Future.delayed( const Duration(seconds:2),(){
      return _data;
    });
  }



}