package com.example.equipo.service;

import com.example.equipo.entidad.partido;
import com.example.equipo.repositorio.PartidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PartidoService {

    @Autowired
    private PartidoRepository partidoRepository;

    public List<partido> listarTodos() {
        return partidoRepository.findAll();
    }

    public Optional<partido> obtenerPorId(Long id) {
        return partidoRepository.findById(id);
    }

    public partido guardar(partido partido) {
        return partidoRepository.save(partido);
    }

    public void eliminar(Long id) {
        partidoRepository.deleteById(id);
    }
    public List<partido> guardarVarios(List<partido> partidos) {
        return partidoRepository.saveAll(partidos);
    }

}