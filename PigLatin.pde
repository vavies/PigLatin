import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String word){
  for(int i = 0; i<word.length(); i++){
    String p = word.substring(i,i+1);
    if(p.equals("a")||p.equals("e")||p.equals("i")||p.equals("o")||p.equals("u")){
      return i;
    }
  }
  return -1;
}


public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	String findQU = sWord.substring(0,2);
	String quWorked = sWord.substring(2);
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0){
		return sWord + "way";
	}
	else if(findQU.equals("qu")){
		return quWorked + "quay";
	}
	else if(findFirstVowel(sWord)>0){
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
	else{
		return "ERROR!";
	}
}
