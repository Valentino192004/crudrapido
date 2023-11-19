package com.example.crudrapido.controler;
import com.example.crudrapido.modelo.Producto;
import com.example.crudrapido.interfaceService.IproductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping (path = "/api/v1/productos")
public class Controlador {
    @Autowired
    private IproductoService service;
    @GetMapping("/listar")
    public String listar(Model model){
        List<Producto>productos=service.listar();
        model.addAttribute("productos",productos);
        return  "index";
    }
    @GetMapping("/new")
    public  String agregar(Model model){
        model.addAttribute("producto", new Producto());
        return "form";
    }
    @PostMapping("/save")
    public String save(Producto p, Model model){
        service.save(p);
        return "redirect:/listar";

    }

    @GetMapping ("/editar/{id}")
    public String editar(@PathVariable int id, Model model){
        Optional<Producto>producto=service.listarId(id);
        model.addAttribute("producto",producto);
        return "form";
    }
    public  String delete(Model model, @PathVariable int id){
        service.delete(id);
        return  "redirect:/listar";
    }
}

