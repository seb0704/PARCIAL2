package com.example.equipo.controller;

import com.example.equipo.entidad.partido;
import com.example.equipo.service.PartidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/partidos")
public class PartidoController {

    @Autowired
    private PartidoService partidoService;

    @GetMapping
    public List<partido> listar() {
        return partidoService.listarTodos();
    }

    @GetMapping("/{id}")
    public partido obtenerPorId(@PathVariable Long id) {
        return partidoService.obtenerPorId(id).orElse(null);
    }

    @PostMapping
    public partido guardar(@RequestBody partido partido) {
        return partidoService.guardar(partido);
    }

    @PutMapping("/{id}")
    public partido actualizar(@PathVariable Long id, @RequestBody partido partido) {
        partido.setId_partido(id);
        return partidoService.guardar(partido);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        partidoService.eliminar(id);
    }
}