Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    And añado un gasto de 10 euros llamado Transporte
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Transporte
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 50, 50, 100 euros dentro de un gestor con un gasto vacío
    Given un gestor de gastos vacío
    When añado un gasto de 50 euros llamado Café
    And añado un gasto de 50 euros llamado Comida
    And añado un gasto de 100 euros llamado Transporte
    Then el total de dinero gastado debe ser 200 euros
  
  Scenario: Crear cinco gastos de 133, 248, 300, 500 y 1000 euros dentro de un gestor con un gasto vacío
    Given un gestor de gastos vacío
    When añado un gasto de 133 euros llamado Café
    And añado un gasto de 248 euros llamado Comida
    And añado un gasto de 300 euros llamado Creatina
    And añado un gasto de 500 euros llamado Proteína
    And añado un gasto de 1000 euros llamado Suplementos
    And elimino el gasto con id 2
    Then el total de dinero gastado debe ser 1933 euros

  Scenario: Crear dos gastos de 100 y 100 euros dentro de un gestor con un gasto vacío
    Given un gestor de gastos vacío
    When añado un gasto de 100 euros llamado Café
    And añado un gasto de 100 euros llamado Comida
    Then el gasto con id 1 debe tener el titulo Café
    And el gasto con id 2 debe tener el titulo Comida
    