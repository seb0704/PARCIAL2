package com.example.equipo.entidad;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "entrenador")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class entrenador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_entrenador;

    private String nombre;
    private String especialidad;

    @ManyToOne
    @JoinColumn(name = "id_equipo")
    private equipo equipo;
}