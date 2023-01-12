# Structure de projet Symfony React on Docker

---

*Auteur : Rémi Venant, <[remi.venant@univ-lemans.fr](mailto://remi.venant@univ-lemans.fr)>*  
*Version : 1.0

---

Ce projet propose une structure de base aggrémentée d'une démonstration pour des projets de développement d'application web reposant sur Symfony coté *backend* et React/MobX coté *frontend*, ainsi que sur des bases de données SQL et NoSQL orientées Document.

Ce dépôt propose :
- la structuration de l'arborescence de fichiers ;
- des piles de conteneurs Docker pour fournir les environnements de développement et de production ;
- la structure et l'ensemble des fichiers de configuration nécessaires à l'exploitation des piles Docker ;
- des utilitaires de manipulation des conteneurs de bases de données ;
- une documentation ;
- une application de démonstration exploitant l'ensemble des composants.

2 branches principales sont proposées dans ce dépôt :
- **main** : contient la structure de base de la pile docker, la structure initialisée des applications **backend** et **frontent**, les applications de démonstration. *Cette branche est celle conseillée pour commencer votre projet*.
- **structure-only** : contient la structure de base de la pile docker. Les applications *backend* et *frontend* ne sont pas initialisées.

## Documentation

La documentation est consultable ici : [doc/documentation_fr.pdf](./doc/documentation_fr.pdf).

Si vous souhaitez construire un projet similaire en partant de zéro, une documentation est fournie ici : [doc/creation_from_scratch.md](./doc/creation_from_scratch.md).

## Tester rapidement l'application de démonstration

- vérifier que Docker soit bien installé et lancé sur votre machine, et que vous ayez les droits de manipuler docker (ex.: `docker ps`).
- vérifier qu'aucun programme sur votre machine ne soit déjà à l'écoute du port 80
- Clonez la branche main du dépôt (`git clone ...`)
- positionnez-vous dans le dossier du dépôt (`cd ...`)
- Lancez l'application de démo en mode production (`docker-compose -f docker-compose-prod.yml up`)
- attendez que l'ensemble des conteneurs soient correctement lancés. Normalement, lorsque l'application sera prête, la commande `docker-compose -f docker-compose-prod.yml ps` devrez vous indiquer que les conteneurs http, mongodb, mariadb, symfony sont lancés correctement (*running (healthy)*) et que le conteneur npm a terminé avec un code de sortie 0 (*Exit 0*). Le premier lancement est généralement long (rapatriement des images, construction de l'image symfony, installation des dépendances des application *backend* et *frontend*, build de l'application *frontend*)
- Une fois l'ensemble des conteneurs lancés, générez le schéma de la base de données SQL depuis Symfony (`docker-compose -f docker-compose-prod.yml exec symfony php bin/console doctrine:migrations:migrate`)
- Vous devriez pouvoir tester l'application depuis votre navigateur à l'adresse [http://localhost:80](http://localhost:80)
