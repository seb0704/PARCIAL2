package com.example.equipo.entidad;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "equipo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class equipo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_equipo;

    private String nombre;
    private String ciudad;
    private LocalDate fundacion;

    @OneToMany(mappedBy = "equipo", cascade = CascadeType.ALL)
    private List<jugador> jugadores;

    @OneToMany(mappedBy = "equipo", cascade = CascadeType.ALL)
    private List<entrenador> entrenadores;

    @OneToMany(mappedBy = "equipoLocal", cascade = CascadeType.ALL)
    private List<partido> partidosLocal;

    @OneToMany(mappedBy = "equipoVisita", cascade = CascadeType.ALL)
    private List<partido> partidosVisita;
}