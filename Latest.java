
package Model;

public class Latest {
  private int id;
  private String mname;
  private String cphoto;
private String c1photo;

    public String getC1photo() {
        return c1photo;
    }

    public void setC1photo(String c1photo) {
        this.c1photo = c1photo;
    }

    public Latest() {
    }

    public Latest(int id, String mname, String cphoto) {
        this.id = id;
        this.mname = mname;
        this.cphoto = cphoto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getCphoto() {
        return cphoto;
    }

    public void setCphoto(String cphoto) {
        this.cphoto = cphoto;
    }

   
   
}
