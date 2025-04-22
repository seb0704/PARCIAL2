package com.example.equipo.repositorio;

import com.example.equipo.entidad.jugador;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JugadorRepository extends JpaRepository<jugador, Long> {
}