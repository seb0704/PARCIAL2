package com.example.equipo.controller;

import com.example.equipo.entidad.jugador;
import com.example.equipo.service.JugadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/jugadores")
public class JugadorController {

    @Autowired
    private JugadorService jugadorService;

    @GetMapping
    public List<jugador> listar() {
        return jugadorService.listarTodos();
    }

    @GetMapping("/{id}")
    public jugador obtenerPorId(@PathVariable Long id) {
        return jugadorService.obtenerPorId(id).orElse(null);
    }

    @PostMapping
    public jugador guardar(@RequestBody jugador jugador) {
        return jugadorService.guardar(jugador);
    }

    @PutMapping("/{id}")
    public jugador actualizar(@PathVariable Long id, @RequestBody jugador jugador) {
        jugador.setId_jugador(id);
        return jugadorService.guardar(jugador);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        jugadorService.eliminar(id);
    }
    @PostMapping("/cargar")
    public List<jugador> guardarVarios(@RequestBody List<jugador> jugadores) {
        return jugadorService.guardarVarios(jugadores);
    }
}