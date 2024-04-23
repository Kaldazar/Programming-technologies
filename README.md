# Technical project №1
### Script for copying files from one directory to another
#### Using:
```
sh tech1.sh <input_dir> <output_dir>
```
#### Example:
Input
```
sh tech1.sh /c/Users/User/Desktop/in /c/Users/User/Desktop/out
```
Output
```
The copying has started...
Files copied from /c/Users/User/Desktop/in to /c/Users/User/Desktop/out
```
#### P.S.
If you specify fewer than two parameters, the result will be:
```
Using: sh tech1.sh <input_dir> <output_dir>
```
If you specify non-existent directories, the script will notify you about it.