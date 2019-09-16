# Important!

!!  We should use a build tool while compiling Batik-recovery
Otherwise it will cause unexpected errors !!




~ First of all create a dir by

  ```mkdir batik```






~ Then go into that dir by

  ```cd batik```






~ Initialize Batik repo manifest 

  ```repo init -u git://github.com/BatikRecovery/br_manifest.git -b br```

  (We are using "br" branch of batik manifest for Oreo)






~ ```repo sync```






~ Add Folders LYF/mirage01a inside "device" of batik source
  and clone water 1 twrp tree ```git clone .... ``` from "Batik" branch 
  And add it to "batik/device/LYF/mirage01a"






~ Inside "batik" dir , clone this tool by

   ```git clone https://github.com/zhantech/tools_compile.git -b tools```

   Then 

   ```bash tools_compile/setup/setup.sh && bash tools_compile/setup/ninja.sh && bash tools_compile/setup/ccache.sh```






~ Then build 
   
       . build/env*


       lunch omni_mirage01a-userdebug```
  

       mka recoveryimage 






~ It will then compile the recovery image 
  And a recovery zip located in out/target/product/target/mirage01a
