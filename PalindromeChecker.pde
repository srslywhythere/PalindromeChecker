public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(onlyLetters(word).equals(reverse(onlyLetters(word)))){
    return true;
  }
  return false;
}
public String onlyLetters(String sString){
  String bull = new String();
  for(int b = 0; b <= sString.length()-1; b++) {
    if(Character.isLetter(sString.charAt(b)) == true)
      bull = bull + sString.charAt(b);
  }
  return bull.toLowerCase();
}
    
public String reverse(String str)
{
  String sNew = new String();
  for (int a = 0; a<=str.length() - 1; a++) {
    sNew = sNew + (str.substring(str.length() - a - 1, str.length() - a));
  }
  return sNew.toLowerCase();
}