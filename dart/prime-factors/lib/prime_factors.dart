class PrimeFactors {
  List<int> factors(int num){
    List<int> result=[];

    if(num<2){
      return [];
    }
    else if(num==2 || num ==3 ){
      return [num];
    }
    else{
      int temp = num;
      for(int i=2; i<num-1; i++){

        while(temp%i==0){
          result.add(i);
          temp = temp~/i;

        }
      }
      return result;
    }
  }}
