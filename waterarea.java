public class waterarea{

    public static void main(String []args){
      
      int arr[] = {0, 8, 0, 0, 5, 0, 0, 10, 0, 0, 1, 1, 0, 3};  
      int n = arr.length;  
      System.out.print ("surface area of the water trapped between the pillars is ");
      System.out.println(WaterTrapped(arr, n));  
     
    }   
    //method to calculate the amountt of water trapped
 public static  int WaterTrapped(int arr[], int n)  
{ 
     
   // To store the maximum water  
  int res = 0; 
     
   // For every element of the array 
   for (int i = 1; i < n-1; i++) { 
         
       // Find the maximum element on its left 
       int left = arr[i]; 
       for (int j=0; j<i; j++) 
          left = Math.max(left, arr[j]); 
         
       // Find the maximum element on its right    
       int right = arr[i]; 
       for (int j=i+1; j<n; j++) 
          right = Math.max(right, arr[j]);  
        
      // Update the maximum water     
      res = res + (Math.min(left, right) - arr[i]);    
   } 
 
   return res;    
    
}
    
}