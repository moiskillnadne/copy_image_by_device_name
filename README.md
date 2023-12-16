# The bash script was created to copy image files by device type names

The script was created for Linux and Mac OS system.

## Know How To Use


To filter photos by the device model name and copy them to another folder using a bash script, you'll need to use tools that can read the metadata (EXIF data) from the photos, such as exiftool. exiftool is a powerful command-line utility for reading, writing, and editing metadata in a wide variety of files.

Here's a basic script that you can use for this task. This script assumes that exiftool is installed on your system. If it's not installed, you can usually install it via your package manager (like apt on Ubuntu, or brew on macOS).

First, install exiftool if you haven't already:

```
# For Ubuntu/Debian
sudo apt-get install exiftool

# For MacOS
brew install exiftool
```

Then, use the script from repo.

Replace /path/to/your/photos with the path to your folder with photos, /path/to/output/folder with the path where you want to copy the photos, and replace iPhone Model 1, iPhone Model 2, and iPhone Model 3 with the actual model names of the iPhones (you can find these names in the EXIF data of the photos).

This script will copy the photos taken by the specified iPhone models to the specified output directory. The find command is used to search for files in the input directory, and exiftool reads the metadata of each photo to check the model name. If the model name matches, the photo is copied to the output directory.