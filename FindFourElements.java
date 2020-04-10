import java.util.Arrays;
import java.util.ArrayList;
public class FindFourElements{ 

  
    // Driver program to test above functions 
    public static void main(String[] args)  
    { System.out.println("possible combinations");
        
        int A[] = {7, 6, 4, -1, 1, 2}; 
        int n = A.length; 
        int X = 16; 
        
       findFourElements(A, n, X);
         
    } 
    
    /* a method to find the 4 possible combination for the targted sum and store in in an array */
 public static  void findFourElements(int A[], int n, int X)  
    {   ArrayList<ArrayList<Integer> > Psum 
            = new ArrayList<ArrayList<Integer> >();// array list to print the possible values for the targeted sum 
        // Fix the first element and find other three 
        for (int i = 0; i < n - 3; i++)  
        { 
            // Fix the second element and find other two 
            for (int j = i + 1; j < n - 2; j++)  
            { 
                // Fix the third element and find the fourth 
                for (int k = j + 1; k < n - 1; k++)  
                { 
                    // find the fourth 
                    for (int l = k + 1; l < n; l++)  
                    { 
                        if (A[i] + A[j] + A[k] + A[l] == X)  
                              Psum.add(new ArrayList<Integer>(Arrays.asList(A[i],A[j],A[k],A[l]))); //adding it to 2d array
                  
                    } 
                } 
            } 
        } 
      
        
			System.out.println(Psum);//printing the possible combination
    }    
    
    
} 
