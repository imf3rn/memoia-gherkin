Feature: Alerta al salir de zona segura

  Scenario: El paciente cruza el límite de su zona segura
    Given MemoIA monitorea al paciente con GPS
    And la zona segura está configurada en 50 metros desde su hogar
    When el paciente se aleja más de 50 metros
    Then el sistema debe enviar una alerta sonora y visual al cuidador

  Scenario Outline: Alertas según ubicación
    Given el paciente está en "<ubicacion_actual>"
    When se desplaza hacia "<nueva_ubicacion>"
    Then MemoIA debe mostrar la alerta "<mensaje_alerta>"

    Examples:
      | ubicacion_actual | nueva_ubicacion   | mensaje_alerta                           |
      | casa             | parque cercano    | Alerta: paciente fuera del perímetro     |
      | cocina           | sala              | - (sin alerta)                           |
      | casa             | calle principal   | Riesgo: paciente en zona no segura       |
