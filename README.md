# Dead Simple Graphics Dependencies Installer
## Build Instruction

### Step 1: Open Project and Set Build Type

Open root dir with Clion, and set Build Type to Release(**!Important**)

### Step 2 (optional): Set Cmake Options

You may set cmake options as

```cmake
-DEXTERNAL_INSTALL_DIR="the path you want to install"
```

if you skip this step, the default `EXTERNAL_INSTALL_DIR` would be `./install` under the root dir.

### Step 3: Select Dependencies You Want

open CMakeLists.txt and you will see options like below.

```cmake
option(INSTALL_GLFW "INSTALL GLFW" ON)
option(INSTALL_GLAD "INSTALL GLAD" ON)
option(INSTALL_GLM "INSTALL GLM" ON)
option(INSTALL_ASSIMP "INSTALL ASSIMP" ON)
option(INSTALL_STB "INSTALL STB" ON)
option(INSTALL_LIBIGL "INSTALL LIBIGL" OFF)
```

turn ON any dependencies you want to install, vise versa.

### Step 4: Build All Selected Dependencies

click <u>Build</u> -> <u>Build All in Release</u>

![image-20220128145037684](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220128145037684.png)

### Step 5 (optional): Append Wanted Dependencies

You're able to append dependencies that are originally turnned off by

1. turn on the option(s)
2. switch build target![image-20220128144923908](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220128144923908.png)
3. individually build![image-20220128145018811](C:\Users\Administrator\AppData\Roaming\Typora\typora-user-images\image-20220128145018811.png)

## Futher

Wish you a glad graphics journey :p
