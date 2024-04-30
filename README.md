# Technical project №1
**Script for copying files from one directory to another**
Filename in repository: tech1.sh
### Using:

1. **Cloning repository**

    ```
    git clone https://github.com/Kaldazar/programming-technologies.git
    ```

2. **Running the script**

    Go to the directory of the cloned repository and input:

    ```
    sh tech1.sh <input_dir> <output_dir>
    ```
    Replace <input_dir> and <output_dir> with the paths to your input and output directories.

3. **Example**

    Input

    ```
    sh tech1.sh /c/Users/User/Desktop/in /c/Users/User/Desktop/out
    ```

    Output

    ```
    The copying has started...
    Files copied from /c/Users/User/Desktop/in to /c/Users/User/Desktop/out
    ```

4. **Issues**

    If you specify fewer than two parameters, the result will be:
    ```
    Using: sh tech1.sh <input_dir> <output_dir>
    ```
    If you specify non-existent directories, the script will notify you about it.

### Tests

The repository contains the "dir" directory, which simulates an input directory with a complex file structure:
* dir
    * a.txt
    * b.py
    * c.pdf
    * dir2
        * a.txt
        * d.py
        * e.txt

After running the script, the following files will appear in the output directory (dir1 in the repository):
* dir1
    * .gitkeep
    * a.txt
    * a1.txt
    * b.py
    * c.pdf
    * d.py
    * e.txt

Don't pay attention to the file".gitkeep". It was created as a placeholder for the directory.

### Author

Gayfutdinov Daniyar (HSE, Business Informatics, 1st year, BBI232)
> Link to Telegram: [@deathrattle94](https://t.me/deathrattle94)  
> Сorporate mail: drgayfutdinov@edu.hse.ru