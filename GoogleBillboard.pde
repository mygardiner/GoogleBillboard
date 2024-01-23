public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
     for(int i = 0; i < e.length(); i++){
       String digits = e.substring(2+i, 12+i);
       double dNum = Double.parseDouble(digits);
       if(isPrime(dNum)==true){
         System.out.println(digits);
         break;
       }
     }
   }
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  int a = 0;
  for(int i = 2; i <= Math.sqrt(dNum); i++){
    if(dNum % i == 0){
      a = a + 1;
    }
  }
  if(dNum < 2)
    return false;
  else if(a == 0)
    return true;
  else
    return false; 
}
