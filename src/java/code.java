/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author user
 */
import java.util.*;
public class code {
    public static void main(String []arr){
           LinkedList l=new LinkedList();
           for(char c='A';c<='Z';c++){
               l.add(""+c);
           }
           for(char c='a';c<='z';c++){
               l.add(""+c);
            }
           for(int i=0;i<=9;i++){
                  l.add(""+i);
           }
           Collections.shuffle(l);
           String code="";
           for(int i=0;i<6;i++){
               code=code+l.get(i);
           }
           System.out.println(code);
   
       }
}
