package com.example.equipo.service;

import com.example.equipo.entidad.estadisticajugador;
import com.example.equipo.repositorio.EstadisticaJugadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EstadisticaJugadorService {

    @Autowired
    private EstadisticaJugadorRepository estadisticaJugadorRepository;

    public List<estadisticajugador> listarTodos() {
        return estadisticaJugadorRepository.findAll();
    }

    public Optional<estadisticajugador> obtenerPorId(Long id) {
        return estadisticaJugadorRepository.findById(id);
    }

    public estadisticajugador guardar(estadisticajugador estadistica) {
        return estadisticaJugadorRepository.save(estadistica);
    }

    public void eliminar(Long id) {
        estadisticaJugadorRepository.deleteById(id);
    }
}