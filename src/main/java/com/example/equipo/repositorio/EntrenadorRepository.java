package com.example.equipo.repositorio;

import com.example.equipo.entidad.entrenador;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EntrenadorRepository extends JpaRepository<entrenador, Long> {
}