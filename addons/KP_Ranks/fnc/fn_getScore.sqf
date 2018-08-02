/*
    KPR_fnc_getScore

    File: fn_getScore.sqf
    Author: Wyqer - https://github.com/KillahPotatoes
    Date: 2018-07-23
    Last Update: 2018-07-23
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Gets the current score of a given player. Identified by the Steam UID.
    Returns the current score as number. If the Steam UID wasn't found it returns -1.

    Parameter(s):
        0: STRING - Steam UID of the player

    Returns:
    NUMBER
*/

params ["_uid"];

private _index = KPR_players findIf {_x select 1 == _uid};

// Return -1, if uid wasn't found in the players array
if (_index == -1) exitWith {_index};

// Return score, if player was found
KPR_players select _index select 5
