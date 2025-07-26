# G2-custom-music
Allows configuring custom music (.mp3 or .sgt) in Gothic.ini. Supports multiple tracks within a single music zone.

## How to configure

1. Copy your music to `_work\Data\Music`
2. Run the game at least once, so that it adds default [CUSTOM_MUSIC] to Gothic.ini.
3. Open Gothic.ini and scroll down to [CUSTOM_MUSIC] section.

For each music zone it adds two entries: `(musicZoneName)=track.mp3` and `(musicZoneName)_random=0`. **You configure only one of the two, never both**. `(musicZoneName)` is for one track only. Use `(musicZoneName)_random` if you want to have more than one track in that music zone (it's randomized on game load). `(musicZoneName)_random` defines how many tracks you have. These track need to have specific file names: `(musicZoneName)_(number)`.

```
[CUSTOM_MUSIC]
(musicZoneName)=track.mp3
(musicZoneName)_random=0 ; 0 = no randomization, above 0 = you need musicZoneName_1.mp3, musicZoneName_2.mp3, etc. Warning: will overwrite values in musicZoneName
```
Real example:
```
[CUSTOM_MUSIC]
SYS_Menu_random=3
SYS_Menu=SYS_Menu_2.mp3
hrs_day_fgt=nw_dayfgt.sgt
hrs_ngt_std=NW_FOREST.mp3
```

## Don't know which track is played where?

Set in Gothic.ini
```
[BASSMUSIC]
LoggerLevelUnion=TRACE
```
and in SystemPack.ini:
```
[CORE]
ShowDebugWindow = true
```

in console window you will see logs when music zone changes:
```
 TRACE  [zBassMusic::CMusicSys_Bass] PlayThemeByScript: OR_DAY_STD
 TRACE  [zBassMusic::CMusicSys_Bass] PlayThemeByScript: OR_NGT_STD
```
OR_DAY_STD and OR_NGT_STD are the music zones here.

In case you have set music zones to use .mp3:
```
  INFO  [zBassMusic::ChangeZoneCommand] Music zone changed: KHO_DAY_STD
  INFO  [zBassMusic::ScheduleThemeChangeCommand] Scheduling theme: KHO_DAY_STD
 DEBUG  [zBassMusic::MusicTheme] Transition HRS_NGT_STD to KHO_DAY_STD
 TRACE  [zBassMusic::Event_OnChange] KHO_DAY_STD, NW_CITY.mp3
```
KHO_DAY_STD and HRS_NGT_STD are the music zones here

Warning: try to use .sgt where possible and keep .mp3 below 80, or zBassMusic might crash the game.
