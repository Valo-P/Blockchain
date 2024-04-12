// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/// @custom:security-contact myweather@exemple.com
contract WeatherCoin is
    ERC20,
    ERC20Burnable,
    ERC20Pausable,
    AccessControl,
    ERC20Permit
{
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // Structure de données pour stocker les informations météorologiques
    struct WeatherInfo {
        uint timestamp;
        string location;
        uint temperature;
        uint humidity;
        uint windSpeed;
        string windDirection;
        uint pressure;
    }
    // Mapping pour stocker les données météorologiques par emplacement
    mapping(string => WeatherInfo[]) public weatherData;

    // Roles pour l'oracle météo et l'administrateur
    bytes32 public constant WEATHER_ORACLE_ROLE =
        keccak256("WEATHER_ORACLE_ROLE");
    bytes32 public constant WEAC_DEFAULT_ADMIN_ROLE = 0x00;

    constructor(
        address defaultAdmin,
        address pauser,
        address minter,
        address weatherOracle
    ) ERC20("WeatherCoin", "WEAC") ERC20Permit("WeatherCoin") {
        _grantRole(WEAC_DEFAULT_ADMIN_ROLE, defaultAdmin);
        _mint(msg.sender, 500000 * 10 ** decimals());
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(MINTER_ROLE, minter);
        _grantRole(WEATHER_ORACLE_ROLE, weatherOracle);
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    // Fonction pour ajouter de nouvelles données météorologiques
    function addWeatherData(
        string memory _location,
        uint _timestamp,
        uint _temperature,
        uint _humidity,
        uint _windSpeed,
        string memory _windDirection,
        uint _pressure
    ) public {
        WeatherInfo memory newWeatherInfo;
        newWeatherInfo.timestamp = _timestamp;
        newWeatherInfo.location = _location;
        newWeatherInfo.temperature = _temperature;
        newWeatherInfo.humidity = _humidity;
        newWeatherInfo.windSpeed = _windSpeed;
        newWeatherInfo.windDirection = _windDirection;
        newWeatherInfo.pressure = _pressure;

        weatherData[_location].push(newWeatherInfo);
    }

    // Fonction pour rapporter les conditions météorologiques et attribuer des récompenses en fonction
    function reportWeather(
        address to,
        bool isRaining
    ) public onlyRole(WEATHER_ORACLE_ROLE) {
        if (isRaining) {
            _mint(to, 100 * 10 ** decimals());
        }
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20, ERC20Pausable) {
        super._update(from, to, value);
    }
}
