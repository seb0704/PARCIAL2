package com.example.equipo.service;

import com.example.equipo.entidad.entrenador;
import com.example.equipo.repositorio.EntrenadorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EntrenadorService {

    @Autowired
    private EntrenadorRepository entrenadorRepository;

    public List<entrenador> listarTodos() {
        return entrenadorRepository.findAll();
    }

    public Optional<entrenador> obtenerPorId(Long id) {
        return entrenadorRepository.findById(id);
    }

    public entrenador guardar(entrenador entrenador) {
        return entrenadorRepository.save(entrenador);
    }

    public void eliminar(Long id) {
        entrenadorRepository.deleteById(id);
    }
}