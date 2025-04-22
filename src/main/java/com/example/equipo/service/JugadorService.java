package com.example.equipo.service;

import com.example.equipo.entidad.jugador;
import com.example.equipo.repositorio.JugadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JugadorService {

    @Autowired
    private JugadorRepository jugadorRepository;

    public List<jugador> listarTodos() {
        return jugadorRepository.findAll();
    }

    public Optional<jugador> obtenerPorId(Long id) {
        return jugadorRepository.findById(id);
    }

    public jugador guardar(jugador jugador) {
        return jugadorRepository.save(jugador);
    }

    public void eliminar(Long id) {
        jugadorRepository.deleteById(id);
    }
}