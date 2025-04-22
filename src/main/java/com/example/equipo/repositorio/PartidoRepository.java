package com.example.equipo.repositorio;

import com.example.equipo.entidad.partido;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PartidoRepository extends JpaRepository<partido, Long> {
}