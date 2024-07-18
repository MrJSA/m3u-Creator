# m3u-Creator
It started with a .bat script I wrote to automatically create .m3u playlist for .chd files

### I also included the CHDMAN files in this repo, so this repo is all you need to convert your CUE/GDI/ISO files to CHD and M3U

### chd_m3u_creator
makes a M3U file with the names of all the CHD files in the same folder as this script.
Just place the script in the folder you have the CHD files and the script will create your M3U automatically

### chd_m3u_creator_subfolder
should do the same, but also include subfolders. If it is run twice, all CHD files are also listed twice in the M3U file.
I have not tested it thoroughly yet.

### CUE_GDI_ISO_to_CHD
Compresses the disc formats CUE/GDI/ISO to CHD. It will create the CHD file in the same folder this script is in using CHDMAN.

### CUE_GDI_ISO_to_CHD_subfolder
Compresses the disc formats CUE/GDI/ISO to CHD. But different to the other script it will create the CHD file in the same folder as the original file is in.

### CHD_to_CUE
Decompresses CHD (V5) to CUE. (CUE is used by CD-based games. On the Raspberry Pi, CHD is supported by TurboGrafx-CD/PC Engine CD, Sega CD/Mega CD, and Dreamcast)

### CHD_to_GDI
Decompresses CHD (V5) to GDI. (GDI is used by Dreamcast.)

### ISO_to_CSO
Compresses the disc format ISO  to  CSO. It will create the PBP file in the same folder this script is in using maxcso.

### CUE_ISO_M3U_to_PBP
Compresses the disc formats CUE/ISO/M3U to PBP. It will create the PBP file in the same folder this script is in using psxpackager.

### RVZ_to_ISO
Decompresses RVZ to ISO. It will create the ISO file in the same folder this script is in using DolphinTool.

# Credits

CHDMAN was developed by the amazing guys from [MAME](https://github.com/mamedev), so shoutout to them.

MAXCSO was developed by [unknownbrackets](https://github.com/unknownbrackets), shoutout to him aswell.

psxpackager was developed by [RupertAvery](https://github.com/RupertAvery), shoutout to him.

DolphinTool was developed by the amazing guys from [dolphin-emu](https://github.com/dolphin-emu)

chd_m3u_creator by [MrJSA](https://github.com/MrJSA)
