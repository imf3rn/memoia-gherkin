Feature: Recordatorio diario de actividades

  Scenario Outline: Mostrar recordatorios en momentos clave del día
    Given el paciente tiene actividades registradas en MemoIA
    When el sistema detecta que son las "<hora>" horas
    Then debe mostrar el mensaje "<mensaje>" mediante estímulo "<tipo_estimulo>"

    Examples:
      | hora  | mensaje              | tipo_estimulo |
      | 08:00 | Tomar medicina       | voz           |
      | 12:30 | Almorzar             | visual        |
      | 17:00 | Caminar con su hijo  | RA            |
      | 21:00 | Hora de dormir       | voz           |
