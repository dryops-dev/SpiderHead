 /*void _onRiveInit(Artboard artboard) {
  final controller = StateMachineController.fromArtboard(
    artboard,
    'bumpy',
    onStateChange: _onStateChange,
  );
  artboard.addController(controller!);
  _bump = controller.findInput<bool>('bump') as SMITrigger;
}

void _onStateChange(
  String stateMachineName,
  String stateName,
) =>
    setState(
      () => message = 'State Changed in $stateMachineName to $stateName',
    );
    */



    //Besoin :
    //Controle de l'image, que l'on puisse intéragir avec
    //Changement de status de l'image
    //Récupération du changement de status pour le mettre sur lapplication

    //BuilderLayout
    //Creer un layout pour écran en mode paysage
    //penser à faire le mode tablette si possible plus tard

    //Mettre un riverpod en place pour les status
    // Riverpod
    // Status sur le choix de couleur
    // Status sur la progress bar
    // Status sur les texts en fonction des personnages. (Comment stocker ? Y a t(il dque les noms ?))

    //Faire marcher les icons droite et gauche