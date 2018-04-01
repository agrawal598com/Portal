
package Model;

public class UserSignup{
    private String email;
    private String pass;
    private String name;
    private String mobile;
    private int count;
    private String lastlogin;

    public String getLastlogin() {
        return lastlogin;
    }

    public void setLastlogin(String lastlogin) {
        this.lastlogin = lastlogin;
    }

   
    
    public UserSignup() {
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public UserSignup(String email, String pass, String name, String mobile, int count) {
        this.email = email;
        this.pass = pass;
        this.name = name;
        this.mobile = mobile;
        this.count = count;
    }

    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    
}
