package com.example.crudrapido.service;
import com.example.crudrapido.modelo.Venta;
import com.example.crudrapido.interfaces.VentaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VentaService {

    @Autowired
    VentaRepository ventaRepository;

    public List<Venta> getVentas() {
        return ventaRepository.findAll();
    }

    public Optional<Venta> getVenta(Long id) {
        return ventaRepository.findById(id);
    }

    public void saveOrUpdate(Venta venta) {
        ventaRepository.save(venta);
    }

    public void delete(Long id) {
        ventaRepository.deleteById(id);
    }
}
