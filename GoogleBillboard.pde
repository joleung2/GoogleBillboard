public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup() {
  System.out.println(part1());
}
public boolean isPrime(double num) {
  if (num <= 3) return true; 
  if (num % 2 == 0 || num % 3 == 0) return false; 
  for (double i = 5; i <= Math.sqrt(num); i += 6) if (num % i == 0 || num % (i + 2) == 0) return false;
  return true;
}
public String part1() {
  double doubleDigits = 0;
  for (int i = 3; i < e.length() - 10; i++) {
    String digits = e.substring(i, i+10);
    doubleDigits = Double.parseDouble(digits);
    if (isPrime(doubleDigits)) {
      break;
    }
  } 
  return doubleDigits + "";
}
