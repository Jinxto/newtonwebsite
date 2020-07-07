package bean;



public class UserOrder {
  private String name;
  private String Maindish;
  private String Drinks;
  private String Extras;
  private String day;
  private long  id;
  public long getId() {
    return id;
  }
  public void setId(long id) {
	    this.id = id;
	  }
 
  public String getMaindish() {
    return Maindish;
  }
  public void setMaindish(String Maindish) {
    this.Maindish = Maindish;
  }
  public String getExtras() {
    return Extras;
  }
  public void setExtras(String Extras) {
    this.Extras = Extras;
  }
  public String getday() {
    return day;
  }
  public void setday(String day) {
    this.day = day;
  }
  public String getDrinks() {
	    return Drinks;
	  } 
	  public void setDrinks(String Drinks) {
	    this.Drinks = Drinks;
	  }
	  public String getname() {
		    return name;
		  }
		  public void setname(String name) {
		    this.name = name;
		  }
 
}