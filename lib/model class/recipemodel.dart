class Recipe{
  int catId;
  String catName;
  //String subcatName;
  int recipeCal;
  int recipeId;
  String recipeImage;
  List recipeIngredients;
  String recipeName;
  String recipeRating;
  List recipeStep;
  String step1;
  String step2;
  String step3;
  String recipeTime;
  String recipeServing;

  var Step2;
  //int subcatId;


  Recipe({this.catName,this.catId,this.recipeCal,this.recipeId,this.recipeImage,this.recipeIngredients,
    this.recipeName,this.recipeRating,this.recipeServing,this.recipeStep,this.recipeTime,this.step1,
    this.step2,this.step3});

  Recipe.fromJson(Map<String, dynamic> json){
    catId = json['catId'];
    catName= json['catName'];
    recipeCal= json['recipeCal'];
    recipeId= json['recipeId'];
    recipeImage= json['recipeImage'];
    recipeIngredients= json['recipeIngredients'];
    recipeName=json['recipeName'];
    recipeStep=json['recipeStep'];
    recipeRating= json['recipeRating'];
    recipeServing= json['recipeServing'];
    recipeTime= json['recipeTime'];
    step1= json['step1'];
    step2= json['step2'];
    step3=json['step3'];
    //subcatId= json['subcatId'];
   // subcatName= json['subcatName'];
  }

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['catId'] = this.catId;
    data['catName'] = this.catName;
   // data['subcatName'] = this.subcatName;
    data['recipeCal']=this.recipeCal ;
    data['recipeId']=this.recipeId;
    data['recipeImage']=this.recipeImage;
    data['recipeIngredients']=this.recipeIngredients;
    data['recipeRating']=this.recipeRating;
    data['recipeServing']=this.recipeServing;
    data['recipeTime']=this.recipeTime;
    data['step1']=this.step1;
    data['step2']=this.step2;
    data['step3']=this.step3;
   // data['subcatId']=this.subcatId;
    data['recipeName']=this.recipeName;
    data['recipeStep']=this.recipeStep;
  }
}

