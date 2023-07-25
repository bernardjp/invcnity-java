package org.bernardjp.model;

public class Estate {
    private int id;
    private String name;
    private String publicationURL;
    private String locationURL;
    private int rooms;
    private int buildingSize;
    private int price;
    private int user_id;

    public Estate() {}

    public Estate(String name, String publicationURL, String locationURL, int rooms, int buildingSize, int price) {
        this.name = name;
        this.publicationURL = publicationURL;
        this.locationURL = locationURL;
        this.rooms = rooms;
        this.buildingSize = buildingSize;
        this.price = price;
    }
    public Estate(String name, String publicationURL, String locationURL, int rooms, int buildingSize, int price, int user_id) {
        this.name = name;
        this.publicationURL = publicationURL;
        this.locationURL = locationURL;
        this.rooms = rooms;
        this.buildingSize = buildingSize;
        this.price = price;
        this.user_id = user_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPublicationURL() {
        return publicationURL;
    }

    public void setPublicationURL(String publicationURL) {
        this.publicationURL = publicationURL;
    }

    public String getLocationURL() {
        return locationURL;
    }

    public void setLocationURL(String locationURL) {
        this.locationURL = locationURL;
    }

    public int getRooms() { return rooms;  }

    public void setRooms(int rooms) {
        this.rooms = rooms;
    }

    public int getBuildingSize() {
        return buildingSize;
    }

    public void setBuildingSize(int buildingSize) {
        this.buildingSize = buildingSize;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getUserId() {
        return user_id;
    }

    @Override
    public String toString() {
        return "Estate{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", publicationURL='" + publicationURL + '\'' +
                ", locationURL='" + locationURL + '\'' +
                ", rooms=" + rooms +
                ", buildingSize=" + buildingSize +
                ", price=" + price +
                ", user_id=" + user_id +
                '}';
    }
}
