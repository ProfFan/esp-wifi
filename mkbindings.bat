set INCL=\Users\Bjoern\.espressif\tools\riscv32-esp-elf\esp-2021r2-8.4.0\riscv32-esp-elf\riscv32-esp-elf\include\
set OPTS=--no-derive-debug --raw-line "#![allow(non_camel_case_types,non_snake_case,non_upper_case_globals,dead_code)]" --use-core --ctypes-prefix "crate::binary::c_types" --no-layout-tests 
bindgen %OPTS% include\include.h > src\binary\include_esp32c3.rs -- -I./headers/ -I%INCL% -I./include/ -DCONFIG_IDF_TARGET_ESP32C3 -I./headers/esp32c3/
set INCL=\Users\Bjoern\.espressif\tools\xtensa-esp32-elf\esp-2021r2-8.4.0\xtensa-esp32-elf\xtensa-esp32-elf\include
bindgen %OPTS% include\include.h > src\binary\include_esp32.rs -- -I./headers/ -I%INCL% -I./include/ -DCONFIG_IDF_TARGET_ESP32 -I./headers/esp32/
