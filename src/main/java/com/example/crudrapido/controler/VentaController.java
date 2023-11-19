package com.example.crudrapido.controler;
import com.example.crudrapido.modelo.Venta;
import com.example.crudrapido.service.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(path = "api/v2/ventas")
public class VentaController {

    @Autowired
    private VentaService ventaService;

    @GetMapping
    public List<Venta> getAll() {
        return ventaService.getVentas();
    }

    @GetMapping("/{ventaId}")
    public Optional<Venta> getBId(@PathVariable ("ventaId") Long ventaId) {
        return ventaService.getVenta(ventaId);
    }

    @PostMapping
    public void saveUpdate(@RequestBody Venta venta) {
        ventaService.saveOrUpdate(venta);
    }

    @DeleteMapping("/{ventaId}")
    public void saveUpdate(@PathVariable ("ventaId")Long ventaId) {
        ventaService.delete(ventaId);
    }
}
