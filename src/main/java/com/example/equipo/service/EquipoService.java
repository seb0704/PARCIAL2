package com.example.equipo.service;

import com.example.equipo.entidad.equipo;
import com.example.equipo.repositorio.EquipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EquipoService {

    @Autowired
    private EquipoRepository equipoRepository;

    public List<equipo> listarTodos() {
        return equipoRepository.findAll();
    }

    public Optional<equipo> obtenerPorId(Long id) {
        return equipoRepository.findById(id);
    }

    public equipo guardar(equipo equipo) {
        return equipoRepository.save(equipo);
    }

    public void eliminar(Long id) {
        equipoRepository.deleteById(id);
    }
    public List<equipo> guardarVarios(List<equipo> equipos) {
        return equipoRepository.saveAll(equipos);
    }
}