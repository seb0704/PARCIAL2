package com.example.equipo.entidad;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "partido")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class partido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_partido;

    private LocalDate fecha;
    private String estadio;

    @ManyToOne
    @JoinColumn(name = "equipo_local")
    private equipo equipoLocal;

    @ManyToOne
    @JoinColumn(name = "equipo_visita")
    private equipo equipoVisita;

    private Integer goles_local;
    private Integer goles_visita;

    @OneToMany(mappedBy = "partido", cascade = CascadeType.ALL)
    private List<estadisticajugador> estadisticas;
}