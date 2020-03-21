# Bash Script to Create Jupyter Notebook Venv

You should use virtual environments for your jupyter notebooks. This is a bash script that can help as a shortcut for making a new venv in a new (or newly cloned) jupyter notebook project, using jupyter notebook or jupyter lab.

put the bash script in a folder of your choice

`$ chmod +x create_nb_venv.sh`

now make it executable everywhere

```
$ nano ~/.bashrc
```
now add the following line to the bottom of the bashrc file
`export PATH=$PATH:~/sh_scripts`

Replacing `~/sh_scripts` with the path to the location where you stored create_nb_venv.sh. Now restart bashrc:

```
$ source ./bashrc
```
Now you can cd to your project directory, choose a name for your venv and do:
```
$ create_nb_venv.sh <name_of_your_venv>
$ jupyter lab
```
You can now choose the venv for your notebooks.
Good practice is to install all needed packages in the first cell of your notebook, for example:
```
import sys
!{sys.executable} -m pip install numpy
!{sys.executable} -m pip install matplotlib
!{sys.executable} -m pip install scipy
!{sys.executable} -m pip install pandas
!{sys.executable} -m pip install tensorflow
!{sys.executable} -m pip install seaborn
```

