Feature: Estímulo emocional para pacientes confundidos

  Scenario: Mostrar fotos familiares en momentos de confusión
    Given el paciente reporta confusión
    When el sistema detecta una expresión facial de angustia
    Then MemoIA debe mostrar una galería con fotos familiares

  Scenario Outline: Mostrar voz e imágenes según persona asociada
    Given el paciente se muestra confundido por "<motivo>"
    When MemoIA activa el modo de apoyo emocional
    Then se reproduce la voz de "<persona>" y se muestra su foto

    Examples:
      | motivo           | persona         |
      | olvido del hijo  | Alejandro R.    |
      | desorientación   | esposa Ana M.   |
      | soledad          | nieto Tomás     |
