package shop.mtcoding.orange.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Product { // Entity
    private Integer id;
    private String name;
    private String price;
    private Integer qty;
    private Timestamp createdAt;
}
