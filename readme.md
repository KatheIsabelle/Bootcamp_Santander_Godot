# Bootcamp_Santander_Godot
Bootcamp Santander by DIO, learning programming games with Godot.


## PART 1: HELLO WORLD + PLAYER MOVEMENT

In this project, the `player.gd` script features a `ready` function that is invoked only once, as soon as the game starts. Essentially, when the game is opened, the message 'helloworld' appears.

In the second function of this script, the logic for character movement is created. Basically, using user input, the keys that will be pressed (up, down, left, right arrows) are mapped. The second function is `process`, which is updated every frame of the game (`delta`). The position is incremented with the direction of the arrow pressed by the user, multiplied by a speed `@export var speed = 10.0` (declared this way so that it appears within the Godot inspector and can be easily changed if a faster player movement is desired) and multiplied by the delta to ensure the movement matches the game's update frames.


## PARTE 2: FISICA + FUNCIONALIDADES
    No script game_manager.gd filtra-se um evento do mouse especifico para ser
    o clique do botão esquerdo, utilizando condicionais para tal. A função spawn_object é
    invocada para realizar a lógica dentro dela. Dentro da spawn object utiliza-se a posição 
    do mouse onde o clique está acontecendo para realizar a cópia do objeto prefab (em formato de
    cena para que possa ser invocado várias vezes) usando object_template.instantiate, essa 
    cena é colocada em um array que possui um index de acordo com o tamanho do vetor e utiliza-se
    randi_range(0,object_templates.size()-1) para tornar o processo dinamico de acordo com o tamanho
    do vetor. Add_child cria o objeto dentro da cena de acordo com a posição do clique. 

    OBS: Utilizou-se para cada objeto um physics material diferente, este altera a propriedade fisica 
    do objeto fazendo-o quicar, mudando o atrito, etc. 