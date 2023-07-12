
package Model;


public class Productos {
    int productID;
    String NomArt;
    double precio;
    
       public Productos(){   
    }

    public Productos(int productID, String NomArt, double precio) {
        this.productID = productID;
        this.NomArt = NomArt;
        this.precio = precio;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getNomArt() {
        return NomArt;
    }

    public void setNomArt(String NomArt) {
        this.NomArt = NomArt;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
       
       
}