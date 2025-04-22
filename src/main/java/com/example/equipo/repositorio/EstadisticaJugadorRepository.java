package com.example.equipo.repositorio;

import com.example.equipo.entidad.estadisticajugador;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EstadisticaJugadorRepository extends JpaRepository<estadisticajugador, Long> {
}