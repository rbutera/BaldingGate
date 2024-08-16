# BaldingGate

Welcome to the BaldingGate mod pack! This project provides a collection of mods and tools to enhance your Baldur's Gate 3 experience, including quality of life improvements and interface updates.

## Included in the Pack

- **BG3ModManager**: A tool to manage your mods.
- **BG3 Script Extender**: Required by many mods.
- **BG3 Mod Fixer**: Fixes various issues with mods.
- **Steam Achievements Enabled**: Play with achievements while using mods.
- **Native Camera Tweaks**: Enhance your camera experience.
- **BG3ModdingUtils**: Quickly switch between vanilla and mod profiles.
- **Various Mods**: Mostly quality of life and interface updates, including BasketEquipmentNSFW.

## Installation Instructions

1. Download the latest release `.zip` from the [Releases Page](https://github.com/rbutera/BaldingGate/releases).
2. Extract the contents to a permanent folder.
3. Change the compatibility settings of `BG3ModdingUtil.exe` to run as administrator ([click here to see how](#running-bg3-as-an-administrator)).
4. Update `BG3Config.cfg` to include the full path of your Baldur's Gate 3 Steam folder (usually `C:\Program Files (x86)\Steam\steamapps\common\Baldurs Gate 3`).
5. Download the modpack `Mods.7z`:
   - Download [from Qiwi.gg here](https://qiwi.gg/file/cXNX9835-Mods)
   - Use 7zip or WinRAR to extract into a folder called Mods inside your BaldingGate folder.
   - It should [look like this](./ModsLocation.png) - inside Mods should be a bunch of .pak files
6. Open Steam and set the launch options for BG3 to `--skip-launcher`.
7. To play BG3 in vanilla mode:
   - Open `BG3ModdingUtil`.
   - Select the vanilla option.
   - Launch BG3 from Steam.
8. To play BG3 with mods:
   - Open `BG3ModdingUtil`.
   - Select the modlist "BaldingGate".
   - Click the modded button before launching BG3.

## Reshade

I've packaged the Pure preset for reshade as part of this modpack.

If you want to use reshade:

1. Download [Reshade with Addon Support](https://reshade.me/downloads/ReShade_Setup_6.2.0_Addon.exe)
2. Run the installer, and select the DirectX11 version of Baldur's Gate 3 (or the Vulkan version if you use that)
3. When the option presents itself to select which shaders you want to use, pick the option at the bottom to select an ini file.
4. Browse to `Pure_1.0.2.ini` and select it.
5. Launch BG3 and press `Home` on your keyboard
6. Navigate to the "Addon" section. You'll find the Reshade Effect Toggler there.
7. Reshade > Addons > List of Toggle Group (make sure It's enabled) > Settings.
8. In the settings, double-click on `0x11c53bba` so It's yellow.
9. "Apply all enabled techniques" (tick yes).
10. Match swapchain to "Resolution".
11. Invocation location > "On render target change".
12. In the 'Home' tab click the 'Edit global preprocessor definitions' button from the bottom pane.
13. Set RESHADE_DEPTH_INPUT_IS_REVERSED to 1.
14. In the 'Add-ons' tab under Generic Depth toggle 'Copy depth buffer before clear operations' to be selected.
15. Exit window and press done.

For a full video, check out this video on YouTube by Flump:

[![Pure ReShade Installation and Setup](http://img.youtube.com/vi/DK81gn1Zlgg/0.jpg)](http://www.youtube.com/watch?v=DK81gn1Zlgg "Pure ReShade Installation and Setup")

## Running BG3 as an Administrator

1. **Locate the `BG3ModdingUtil.exe` File**:
   - Navigate to the folder where you extracted the BaldingGate pack.
   - Find the file named `BG3ModdingUtil.exe`.

2. **Right-Click on the File**:
   - Right-click on `BG3ModdingUtil.exe` to open the context menu.

3. **Select Properties**:
   - From the context menu, click on **Properties**.

4. **Go to the Compatibility Tab**:
   - In the Properties window, click on the **Compatibility** tab at the top.

5. **Enable Run as Administrator**:
   - In the Compatibility tab, look for the section labeled **Settings**.
   - Check the box that says **Run this program as an administrator**.

6. **Apply Changes**:
   - Click on the **Apply** button at the bottom right of the window.
   - Then click **OK** to close the Properties window.

7. **Confirmation**:
   - The next time you run `BG3ModdingUtil.exe`, it will prompt you for administrator permissions.

## Harem Edition

BaldingGate has an (optional) alternative modlist called "Harem Edition". This edition has a gender-swapped Astarion, Gale and Wyll for those of you who want to have a monogender romance harem for your Tav.
To use this modlist:

1. Download [ the Harem Edition expansion ](https://qiwi.gg/) modpack (as well as [the original BaldingGate modpack, above](https://qiwi.gg/file/cXNX9835-Mods))
2. select `BaldingGate - Harem Edition` when selecting your modlist in BG3ModdingUtil.exe

### How to customize the appearance of female Astarion, Gale and Wyll

- Recruit Astarion, Wyll and Gale.
- Go to camp and select the character you wish to edit.
- Use the Appearance Edit -> Resculp spell.
- Select their origin character, for example if you are editing Astarion, select Astarion.
- Change the body type to 1.
- Make your changes.
- Do not change their name.
- Do not change their guardian.
- Finish. Their portraits will update when you level up or respec if they haven't already.

For more information check out the mod pages for the original mods:

- [Femstarion](https://www.nexusmods.com/baldursgate3/mods/2446)
- [Wylla](https://www.nexusmods.com/baldursgate3/mods/2565)
- [Gale Pal](https://www.nexusmods.com/baldursgate3/mods/2503)

Harem Edition also includes voice packs that replace their voices.

## Full List of Mods

- **AI Allies**: Introduces AI-controlled allies to assist during gameplay.
- **Auto Sell Loot**: Automatically sells loot that is picked up, streamlining inventory management.
- **Autoloot Aura**: Creates an aura around the player to automatically loot nearby items.
- **Auto Send Food To Camp**: Automatically sends food items to the camp storage.
- **Basket Equipment NSFW**: Adds various equipments to the game.
- **BCPP 16x9 4chars 5x10 inventory**: Adjusts the inventory layout for better visibility and usability on 16:9 screens.
- **Better Containers 6x785**: Improves the container UI, allowing for better organization and access to items.
- **Better HotBar 2 169 4x28 scale 86**: Enhances the hotbar layout for improved accessibility and aesthetics.
- **Better Inventory UI Default for Improved UI**: Replaces the default inventory UI with a more user-friendly version.
- **Better Tooltips**: Provides enhanced tooltips for items, making it easier to understand their effects and usage.
- **Configurable Run Speed**: Allows players to adjust their run speed to suit their playstyle.
- **Druid Perfection**: Enhances Druid class abilities and features for improved gameplay.
- **Druid QoL**: Implements quality of life improvements specifically for Druid players.
- **Event Autosave**: Adds automatic saving during key events to prevent loss of progress.
- **Improved UI**: Overhauls the user interface for a more streamlined gaming experience.
- **Improved UI Assets**: Contains assets needed for the Improved UI mod, ensuring proper functionality.
- **Infinite Turn Fix**: Fixes the issue of infinite turns during combat scenarios.
- **Kv Camp Events**: Adds new camp events for greater immersion and storytelling.
- **Longstrider AoE**: Modifies the Longstrider ability to affect multiple targets in an area.
- **Mod Configuration Menu**: Provides a menu for configuring various mods easily.
- **Modified Short Rest**: Short rest now returns 50% of your resources (spell slots etc)
- **Mod Fixer**: Fixes compatibility issues between mods, ensuring they work together smoothly.
- **No Intro**: Skips the intro sequence when starting the game.
- **No Press Any Key Menu**: Removes the "Press Any Key" prompt at the start of the game.
- **No Romance Limit**: Eliminates restrictions on romantic interactions with NPCs.
- **Permanent Longstrider No VFX**: Allows the Longstrider ability to persist without visual effects.
- **Show Approval Ratings - English**: Displays the approval ratings of party members in the user's language.
- **Slightly Better Topbar 169**: Enhances the top bar of the UI for better functionality and aesthetics.
- **Teleport To You**: Allows players to teleport allies or NPCs directly to their location.
- **Unlock Level Curve**: Modifies the experience curve for leveling up characters.
- **Unlock Level Curve Patch Improvement Lv2**: A patch for further improving the leveling curve mechanics.
- **Unlock Level Curve Patch XP x0.75**: Adjusts the experience points required for leveling to a reduced rate (x0.75).
- **Vessnelle Hair**: Adds multiple new hairstyle options for character customization.


## Disclaimer and Copyright

The mods included in this pack are not my creations and are the copyright of their original creators. Baldur's Gate 3 is a wonderful game and the copyright is owned by Larian Studios. 

If any mod creators have an issue with this repository, please reach out to me at rai<at>rbutera.com, and I will promptly comply with your requests. This pack was created to facilitate modded multiplayer experiences with friends and is designed to be helpful for newcomers to Baldur's Gate 3.

Enjoy your adventures in Baldur's Gate 3!
