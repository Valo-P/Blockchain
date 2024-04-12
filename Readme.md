# Exam Blockchain

**_Sujet 3 : Donnée Météo_**

## Analyse

_Dans le secteur de la donnée Météo :_

- La blockchain offre un moyen sécurisé de stocker et de gérer ces données.

- Avec la blockchain, chaque étape de la collecte, de la transmission et de la manipulation des données peut être enregistrée de manière transparente et immuable, offrant ainsi une visibilité totale sur le parcours des données.

- La blockchain peut également amélioré la fiabilité des données et donc des prévisions météorologiques.

- la blockchain peut contribuer à l'amélioration des modèles de prévision et à la précision des prévisions météorologiques à long terme. (Pour des Intelligences Artificiel par exemple)

## Modélisation

_Exemple d'une donnée météo_

```json
{
  "location": "Paris, France",
  "timestamp": "2022-03-01T12:00:00Z",
  "weather": {
    "temperature": 15,
    "humidity": 80,
    "windSpeed": 10,
    "windDirection": "N",
    "pressure": 1013
  }
}
```

### Modèle pour répondre au besoin :

```lua
+---------------------+
| Interface Utilisateur |
+---------------------+
           |
           |
+---------------------+
| Application |
+---------------------+
           |
           |
+---------------------+
| Smart Contracts |
+---------------------+
           |
           |
+---------------------+
| Nœuds du Réseau |
+---------------------+
           |
           |
+---------------------+
| Blockchain |
+---------------------+

```

_Nous avons une interface utilisateur qui communique avec une application. Cette application gère les interactions avec les smart contracts. Les nœuds du réseau valident les transactions et contribuent à la maintenance de la blockchain, qui enregistre toutes les transactions et données météorologiques._

## Programmation Blockchain

- Nous avons choisi une plateforme blockchain adaptée à nos besoins, en nous assurant qu'elle était sécurisée et économe en énergie.

- Nous avons utilisé un langage de programmation Solidity pour créer des Smart Contracts qui régissent les règles de transaction sur la blockchain.

- Nous avons intégré des services externes pour obtenir des données météorologiques, en nous assurant qu'elles étaient fiables avant de les utiliser sur la blockchain.

- Nous avons optimisé la structure de la blockchain pour gérer efficacement une grande quantité de données météorologiques et assurer des performances élevées.

- Nous avons mis en place des mesures de sécurité pour protéger les données des utilisateurs et assurer la confidentialité de leurs informations.

_En suivant ce processus, nous avons réussi à développer une solution blockchain simple et efficace pour gérer les données météorologiques._

## Design Blockchain

_Dans la conception de notre blockchain, nous avons pris en compte les principaux aspects de notre design :_

- Nous avons opté pour une blockchain publique décentralisée, ce qui signifie que chaque nœud du réseau a une copie de la chaîne de blocs.
  Cette structure assure la transparence et la sécurité du réseau, en permettant une vérification décentralisée des transactions.

- Nous avons choisi un mécanisme de consensus Proof of Authority (PoA) pour valider les transactions sur notre blockchain.

- Nous avons conçu notre blockchain pour prendre en charge différents types de transactions liées aux données météorologiques, telles que la collecte, la transmission et l'analyse des données.

- Nous avons mis en place des mécanismes de gouvernance pour garantir la conformité réglementaire et la protection des données sensibles.

- Nous avons conçu une interface utilisateur pour permettre aux utilisateurs d'interagir facilement avec la blockchain. Cette interface permet aux utilisateurs de visualiser les données météorologiques et d'effectuer des transactions.

## Code / Avancement

#### Fichier WeatherCoin.sol

_Voici un aperçu du fonctionnement de ce contrat :_

- Les rôles sont initialisés avec des adresses spécifiques pour l'administrateur par défaut, le gestionnaire de pause, le minter et l'oracle météo.

- Les fonctions pause() et unpause() permettent de mettre en pause et de reprendre les transactions sur le contrat. Seul l'acteur ayant le rôle PAUSER_ROLE peut appeler ces fonctions.

- La fonction mint() permet de créer de nouveaux jetons et de les attribuer à une adresse spécifique. Seul l'acteur ayant le rôle MINTER_ROLE peut appeler cette fonction.

- La fonction addWeatherData() permet d'ajouter de nouvelles données météorologiques à la blockchain. Ces données sont stockées dans une structure de données personnalisée WeatherInfo et associées à une localisation spécifique.

- La fonction reportWeather() permet à l'oracle météo d'enregistrer les conditions météorologiques et, le cas échéant, d'attribuer des récompenses en jetons WEAC. Par exemple, si le temps est pluvieux, l'oracle peut attribuer des jetons en récompense. Seul l'acteur ayant le rôle WEATHER_ORACLE_ROLE peut appeler cette fonction.

- Le contrat effectue des substitutions requises par Solidity pour les fonctions de transfert de jetons, en raison de l'utilisation de fonctionnalités étendues telles que la pause.

_En résumé, ce contrat WeatherCoin permet la gestion des jetons WEAC, ainsi que l'enregistrement et le stockage sécurisé des données météorologiques sur la blockchain. Il offre également des fonctionnalités de gouvernance des rôles pour assurer la sécurité et la fiabilité des opérations effectuées sur le contrat._

## Livrables

#### Githu

### Besoin de la technologie blockchain

Justifiez ici le besoin de la technologie blockchain ou Distributed Ledger Technology.

### Choix de la blockchain

Prenez en compte les contraintes, comme le mécanisme de consensus, la finalité, le bloc, etc.

### Conception et modélisation

Décrivez les participants, les actifs, les transactions et les règles commerciales.

### Demo/POC

Ayez un smartcontract et/ou un noeud modifié ou non, un docker compose ou helm chart à déployer.

### Déploiement de contrat sur Sepolia ou Holesky

Pour la partie code : Utilisez Remix IDE, OpenZeppelin Wizard et leur librairie.
