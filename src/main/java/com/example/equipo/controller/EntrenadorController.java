package com.example.equipo.controller;

import com.example.equipo.entidad.entrenador;
import com.example.equipo.service.EntrenadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/entrenadores")
public class EntrenadorController {

    @Autowired
    private EntrenadorService entrenadorService;

    @GetMapping
    public List<entrenador> listar() {
        return entrenadorService.listarTodos();
    }

    @GetMapping("/{id}")
    public entrenador obtenerPorId(@PathVariable Long id) {
        return entrenadorService.obtenerPorId(id).orElse(null);
    }

    @PostMapping
    public entrenador guardar(@RequestBody entrenador entrenador) {
        return entrenadorService.guardar(entrenador);
    }

    @PutMapping("/{id}")
    public entrenador actualizar(@PathVariable Long id, @RequestBody entrenador entrenador) {
        entrenador.setId_entrenador(id);
        return entrenadorService.guardar(entrenador);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        entrenadorService.eliminar(id);
    }
    @PostMapping("/cargar")
    public List<entrenador> guardarVarios(@RequestBody List<entrenador> entrenadores) {
        return entrenadorService.guardarVarios(entrenadores);
    }
}