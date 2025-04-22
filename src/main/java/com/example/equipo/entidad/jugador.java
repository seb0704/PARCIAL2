package com.example.equipo.entidad;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "jugador")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class jugador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_jugador;

    private String nombre;
    private String posicion;
    private Integer dorsal;
    private LocalDate fecha_nac;
    private String nacionalidad;

    @ManyToOne
    @JoinColumn(name = "id_equipo")
    private equipo equipo;

    @OneToMany(mappedBy = "jugador", cascade = CascadeType.ALL)
    private List<estadisticajugador> estadisticas;
}