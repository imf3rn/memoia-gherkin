Feature: Reconocimiento de rostros cercanos

  Scenario: Mostrar nombre cuando el paciente no reconoce a alguien
    Given el paciente está frente a una persona
    When MemoIA no reconoce la cara como familiar
    Then se debe mostrar en pantalla el nombre, parentesco y una foto de referencia

  Scenario Outline: Identificación automática de personas conocidas
    Given el paciente ve a "<persona>"
    When MemoIA reconoce su rostro
    Then debe mostrar "<nombre>" con el texto "<relacion>"

    Examples:
      | persona        | nombre        | relacion       |
      | hijo mayor     | Alejandro R.  | Tu hijo mayor  |
      | enfermera Ana  | Ana M.        | Tu cuidadora   |
      | nieto Tomás    | Tomás R.      | Tu nieto       |
