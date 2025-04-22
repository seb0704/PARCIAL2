package com.example.equipo.repositorio;

import com.example.equipo.entidad.equipo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EquipoRepository extends JpaRepository<equipo, Long> {
}