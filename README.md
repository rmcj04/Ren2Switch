# Ren'Py for Nintendo Switch
This is a port of [Ren'Py](https://www.renpy.org/), a visual novel game engine, to the Nintendo Switch for **homebrew** purposes.  
If you are looking for a **commercial port** for publishing to the Nintendo eShop, contact [Ratalaika Games](https://www.ratalaikagames.com/services/renpy.php).  
The repository is located at the following URL: https://github.com/Otorhin/Ren2Switch 
Ren'Py is a visual novel engine that is written using [Python](https://www.python.org/).  

## Building
 ¯\_(ツ)_/¯
 Just build NSP-file

## Debugging
The log for Ren'Py is recorded in the `log.txt` in the save:// folder 
If a Python error occurs, the traceback will be recorded in the `traceback.txt` file in the save:// folder 

## File Formats
It is highly recommended that you use the following file formats:  

* WebP for image assets
* Opus/WebM for audio assets
* VP8/Opus/Matroska for video assets
* RPAv2 for game archives

If these formats are not used, there is a possibility of the program working incorrectly or performance being impacted.  
Free tools such as [FFmpeg](http://ffmpeg.org/), [cwebp](https://developers.google.com/speed/webp/docs/precompiled), and [ImageMagick](https://imagemagick.org/) are available to convert file formats.  
[rpatool](https://github.com/Shizmob/rpatool) can be used to create and merge RPA files, and also convert to RPAv2 format.  
The file format can be changed without changing the file extension, so no script (`rpy` file) changes are needed.  
The file `example.png` can be in the WebP file format without changing the filename to `example.webp`.  

## File system layout
The following files or folders are required to be in RomFS:  
* `lib.zip` - contains the Python stdlib, Ren'Py modules, pygame_sdl2 modules, and libnx binding modules.
* `renpy` - contains the `common` directory used by Ren'Py.
* `renpy.py` - startup script for Ren'Py.
* `game` - contains the game files. This is where you place the game.

## License
This project is licensed under the MIT license. Please read the `LICENSE` file for more information.  
