package com.example.equipo.controller;

import com.example.equipo.entidad.estadisticajugador;
import com.example.equipo.service.EstadisticaJugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/estadisticas")
public class EstadisticaJugadorController {

    @Autowired
    private EstadisticaJugadorService estadisticaJugadorService;

    @GetMapping
    public List<estadisticajugador> listar() {
        return estadisticaJugadorService.listarTodos();
    }

    @GetMapping("/{id}")
    public estadisticajugador obtenerPorId(@PathVariable Long id) {
        return estadisticaJugadorService.obtenerPorId(id).orElse(null);
    }

    @PostMapping
    public estadisticajugador guardar(@RequestBody estadisticajugador estadistica) {
        return estadisticaJugadorService.guardar(estadistica);
    }

    @PutMapping("/{id}")
    public estadisticajugador actualizar(@PathVariable Long id, @RequestBody estadisticajugador estadistica) {
        estadistica.setId_estadistica(id);
        return estadisticaJugadorService.guardar(estadistica);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        estadisticaJugadorService.eliminar(id);
    }
    @PostMapping("/cargar")
    public List<estadisticajugador> guardarVarios(@RequestBody List<estadisticajugador> estadisticas) {
        return estadisticaJugadorService.guardarVarios(estadisticas);
    }

}