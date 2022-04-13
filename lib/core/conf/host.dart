class EndPoint {
  static const _urlBase = 'https://growing-drake-40.hasura.app/api/rest';
  //Dont Need an argument
  //
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/categories]
  //Method: GET
  //Obtain all categories
  static const urlCategory = '$_urlBase/categories';
  //Need an argument type String
  //nike is the argument type String
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/search/nike]
  //Method: GET
  static const urlSearch = '$_urlBase/search/';
  //Need an argument type int
  //2 is the argument type int
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/searchbytag/2]
  //Method: GET
  static const urlSearchByTag = '$_urlBase/searchbytag/';
  //Need two params offset and limit
  // offset represent current page and limit is cant product get
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/products/offset/limit]
  //Method: GET
  static const urlGetProducts = '$_urlBase/products/';
  //Need a json body
  //
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/updatefavoriteproduct]
  //Method: PUT
  static const urlSetFavoriteProduct = '$_urlBase/updatefavoriteproduct';

  //Need an argument type int
  //2 is the argument type int
  //Sample URL: [https://growing-drake-40.hasura.app/api/rest/searchbyid/2]
  //Method: GET
  static const urlSearchByProductId = '$_urlBase/searchbyid/';

  //Need an argument type bool
  //2 is the argument type int
  //Sample URL: [//https://growing-drake-40.hasura.app/api/rest/searchFavoriteProducts/true]
  //Method: GET
  static const urlSearchByProductStatusFavorite =
      '$_urlBase/searchFavoriteProducts/';

  static const header = {
    'Content-Type': 'application/json',
    'x-hasura-admin-secret':
        'vWZpjUcuRPBPOsmpvKad3cUPLJWXO6wzuKv25gukltC7Ow9oZLUw7POQU4JcfNSs'
  };
}
