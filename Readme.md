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

#### Github : https://github.com/Valo-P/Blockchain

### Besoin de la technologie blockchain

_Le besoin de la technologie blockchain dans le secteur des données météorologiques est justifié par plusieurs facteurs :_

- Transparence et immuabilité des données.

- Traçabilité des données.

- Décentralisation.

- Partage sécurisé des données.

- Automatisation des processus.

_la technologie blockchain apporte une solution efficace et sécurisée pour la gestion et l'échange de données météorologiques, en offrant transparence, traçabilité, décentralisation et automatisation des processus._

### Choix de la blockchain

_Pour notre contexte de gestion des données météorologiques, plusieurs blockchains pourraient être appropriées en fonction de nos besoins spécifiques. Cependant, une blockchain qui se distingue est Polkadot._

_Polkadot est une plateforme blockchain interopérable conçue pour permettre aux différentes chaînes de blocs de fonctionner ensemble de manière transparente._

- Interopérabilité : Polkadot rend facile l'intégration de notre blockchain avec d'autres systèmes.

- Scalabilité : Grâce à son modèle de sécurité partagée, Polkadot peut gérer efficacement un grand nombre de transactions en parallèle.

- Mécanisme de consensus : Polkadot utilise le Nominated Proof of Stake (NPoS), un mécanisme de consensus efficace et écoénergétique.

- Finalité : Les transactions sur Polkadot sont considérées comme définitives après un certain nombre de confirmations, assurant ainsi l'intégrité des données.

- Écosystème robuste : Polkadot bénéficie d'une communauté active de développeurs et d'une gamme d'outils pour faciliter le développement sur sa plateforme.

En résumé, Polkadot offre les fonctionnalités nécessaires pour répondre aux besoins de notre projet tout en offrant un environnement favorable au développement et à l'adoption de notre application météorologique.

### Conception et modélisation

- **Participants :**

- - Les utilisateurs : Ce sont ceux qui soumettent et accèdent aux données météorologiques.
- - Les validateurs : Ce sont ceux qui vérifient l'exactitude des données et ajoutent de nouveaux blocs à la blockchain.
    Actifs :

- - Les jetons WEAC : Ils sont utilisés pour récompenser ceux qui contribuent à la précision des données météorologiques.

- **Transactions :**

- - Enregistrement des données : Les utilisateurs soumettent des données météorologiques à la blockchain.

- - Récompenses : Les validateurs attribuent des jetons WEAC aux utilisateurs pour des données précises.

- **Règles commerciales :**

- - Validation des données : Les données doivent être précises pour être acceptées.
- - Gouvernance : Les utilisateurs peuvent voter sur les mises à jour du système.
- - Protection des données : Les informations sensibles sont accessibles uniquement aux parties autorisées.

_En simplifiant ainsi la conception, nous nous assurons que notre système reste facile à comprendre et à utiliser pour tous les acteurs impliqués dans la gestion des données météorologiques._

### Demo/POC

- #### Fichier WeatherCoin.sol
