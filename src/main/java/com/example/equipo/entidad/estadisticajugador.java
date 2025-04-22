package com.example.equipo.entidad;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "estadistica_jugador")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class estadisticajugador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_estadistica;

    @ManyToOne
    @JoinColumn(name = "id_jugador")
    private jugador jugador;

    @ManyToOne
    @JoinColumn(name = "id_partido")
    private partido partido;

    private Integer minutos_jugados;
    private Integer goles;
    private Integer asistencias;
    private Integer tarjetas_amarillas;
    private Integer tarjetas_rojas;
}