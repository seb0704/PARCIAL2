package com.example.equipo.controller;

import com.example.equipo.entidad.equipo;
import com.example.equipo.service.EquipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/equipos")
public class EquipoController {

    @Autowired
    private EquipoService equipoService;

    @GetMapping
    public List<equipo> listar() {
        return equipoService.listarTodos();
    }

    @GetMapping("/{id}")
    public equipo obtenerPorId(@PathVariable Long id) {
        return equipoService.obtenerPorId(id).orElse(null);
    }

    @PostMapping
    public equipo guardar(@RequestBody equipo equipo) {
        return equipoService.guardar(equipo);
    }

    @PutMapping("/{id}")
    public equipo actualizar(@PathVariable Long id, @RequestBody equipo equipo) {
        equipo.setId_equipo(id);
        return equipoService.guardar(equipo);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        equipoService.eliminar(id);
    }
    @PostMapping("/cargar")
    public List<equipo> guardarVarios(@RequestBody List<equipo> equipos) {
        return equipoService.guardarVarios(equipos);
    }
}