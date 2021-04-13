#
# setup umod oxide mods
# assumuning lgsm, rustserver and oxide mod are installed
# assuming work directory is $HOME of rustserver user
# assuming server dir is $HOME/serverfiles
# assuming server is shutdown - if running it will only update the mods on the fly
# configs will not be touched

# backup mods and config

# remove unneeded / obsolete mods

# download mods
mkdir -p downloads
cd downloads
rm *.cs
rm *.dll

wget https://umod.org/plugins/NoRaid.cs
wget https://umod.org/plugins/NoEscape.cs
wget https://umod.org/plugins/QuickSmelt.cs
wget https://umod.org/plugins/Kits.cs
wget https://umod.org/plugins/StackSizeController.cs
wget https://umod.org/plugins/MagicLoot.cs
wget https://umod.org/plugins/GatherManager.cs
wget https://umod.org/plugins/VehicleLicence.cs
wget https://umod.org/plugins/NTeleportation.cs
wget https://umod.org/plugins/ZoneManager.cs
wget https://umod.org/plugins/DynamicPVP.cs
wget https://umod.org/plugins/UiPlus.cs
wget https://umod.org/plugins/Welcomer.cs
wget https://umod.org/plugins/FurnaceSplitter.cs
wget https://umod.org/plugins/ImageLibrary.cs
wget https://umod.org/plugins/CraftingController.cs
wget https://umod.org/plugins/AbsolutGifts.cs
wget https://umod.org/plugins/Trade.cs
wget https://umod.org/plugins/HelpText.cs
wget https://umod.org/plugins/DiscordChat.cs
wget -O Oxide.Ext.Discord.dll https://umod.org/extensions/discord/download

# install mods
chmod 755 *.dll
cp *.dll ../serverfiles/RustDedicated_Data/Managed/.
cp *.cs ../serverfiles/oxide/plugins/.

cd ..
