package com.example.crudrapido.service;

import com.example.crudrapido.interfaceService.IproductoService;
import com.example.crudrapido.modelo.Producto;
import com.example.crudrapido.interfaces.IProducto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class ProductoService implements IproductoService {
    @Autowired
    private IProducto data;
    @Override
    public List<Producto> listar() {
        return (List<Producto>)data.findAll();
    }

    @Override
    public Optional<Producto> listarId(int id) {
        return data.findById(id);
    }

    @Override
    public int save(Producto p) {
        int res=0;
        Producto producto=data.save(p);
        if (producto.equals(null)){
            res=1;
        }
        return res;
    }

    @Override
    public void delete(int id) {
        data.deleteById(id);
    }
}
