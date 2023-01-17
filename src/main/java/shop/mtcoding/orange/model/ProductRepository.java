package shop.mtcoding.orange.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper // product.xml이 new 된다 -> 보통 ProductRepositoryImpl이라는 이름으로 new 되면서 IOC에 올라간다.
public interface ProductRepository {
    public List<Product> findAll(); // findAll = select id값(xml)
    public Product findOne(int id);
    
    // -1 DB에러, 1 변경된 행이 1건, 0 변경된 행이 없다. (insert 2개를 수행하면 2가 리턴된다.) - 프로토콜
    // public int insert(@Param("name") String name, @Param("price") int price, @Param("qty") int qty);
    public int insert(@Param("name") String name, @Param("price") int price, @Param("qty") int qty);

    public int delete(@Param("id") int id);

    public int update(@Param("name") String name, @Param("price") int price, @Param("qty") int qty, @Param("id") int id);
}