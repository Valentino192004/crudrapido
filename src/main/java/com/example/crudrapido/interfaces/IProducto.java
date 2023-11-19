package com.example.crudrapido.interfaces;

import com.example.crudrapido.modelo.Producto;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IProducto extends CrudRepository <Producto, Integer>{
}
