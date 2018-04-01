
package Model;

public class Bollywood {
  private int id;
  private String mname;
  private String cphoto;

    public Bollywood() {
    }

    public Bollywood(int id, String mname, String cphoto) {
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
