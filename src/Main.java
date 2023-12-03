
import java.io.IOException;


public class Main {
     public static void appStart(){
        Login login = new Login();
        login.setVisible(true);
        try {
            // Provide the path to your xampp.exe
             String currentDir = System.getProperty("user.dir");
             String xamppPath = currentDir+"/xampp/xampp_start.exe";            
            ProcessBuilder processBuilder = new ProcessBuilder(xamppPath);           
            Process process = processBuilder.start();
            System.out.println("Xampp Started!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args){
         appStart();
    }
}