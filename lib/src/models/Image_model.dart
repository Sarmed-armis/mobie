class Images{
     var urls;
     var description;



 static  Images fromJson(result) {
   Images images=new Images();
   images.urls=result['urls']['small'];
   images.description=result['description'];
   return images;

  }



}