SET ARDPAT=D:\Program Files (x86)\Arduino\
REM SET AVRPATH=D:\Program Files (x86)\Arduino\hardware\tools\avr\bin\
SET INPUTPAT=D:\github\ArduinoSnippits\BinBlobLoader\
SET WORKINGPATH=D:\github\ArduinoSnippits\BinBlobLoader\output\
REM %AVRPATH%avr-g++

mkdir "%WORKINGPATH%"

"%ARDPAT%hardware\tools\avr\bin\avr-objcopy.exe" -I binary -O elf32-avr -B avr "%INPUTPAT%SourceBlob.bin" "%WORKINGPATH%blob.o" 

"%ARDPAT%hardware\tools\avr\bin\avr-g++" -c -g -Os -w -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\variants\standard" -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%avr\variants\standard" "%INPUTPAT%BinBlobLoader.cpp" -o "%WORKINGPATH%BinBlobLoader.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\hooks.c" -o "%WORKINGPATH%hooks.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\WInterrupts.c" -o "%WORKINGPATH%WInterrupts.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\wiring.c" -o "%WORKINGPATH%wiring.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\wiring_analog.c" -o "%WORKINGPATH%wiring_analog.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\wiring_digital.c" -o "%WORKINGPATH%wiring_digital.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\wiring_pulse.c" -o "%WORKINGPATH%wiring_pulse.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\wiring_shift.c" -o "%WORKINGPATH%wiring_shift.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\abi.cpp" -o "%WORKINGPATH%abi.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\CDC.cpp" -o "%WORKINGPATH%CDC.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HardwareSerial.cpp" -o "%WORKINGPATH%HardwareSerial.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HardwareSerial0.cpp" -o "%WORKINGPATH%HardwareSerial0.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HardwareSerial1.cpp" -o "%WORKINGPATH%HardwareSerial1.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HardwareSerial2.cpp" -o "%WORKINGPATH%HardwareSerial2.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HardwareSerial3.cpp" -o "%WORKINGPATH%HardwareSerial3.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\HID.cpp" -o "%WORKINGPATH%HID.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\IPAddress.cpp" -o "%WORKINGPATH%IPAddress.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\main.cpp" -o "%WORKINGPATH%main.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\new.cpp" -o "%WORKINGPATH%new.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\Print.cpp" -o "%WORKINGPATH%Print.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\Stream.cpp" -o "%WORKINGPATH%Stream.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\Tone.cpp" -o "%WORKINGPATH%Tone.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\USBCore.cpp" -o "%WORKINGPATH%USBCore.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\WMath.cpp" -o "%WORKINGPATH%WMath.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -c -g -Os -w -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10603 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR -I"%ARDPAT%hardware\arduino\avr\cores\arduino" -I"%ARDPAT%hardware\arduino\avr\variants\standard" "%ARDPAT%hardware\arduino\avr\cores\arduino\WString.cpp" -o "%WORKINGPATH%WString.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%hooks.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%WInterrupts.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%wiring.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%wiring_analog.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%wiring_digital.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%wiring_pulse.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%wiring_shift.c.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%abi.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%CDC.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HardwareSerial.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HardwareSerial0.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HardwareSerial1.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HardwareSerial2.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HardwareSerial3.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%HID.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%IPAddress.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%main.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%new.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%Print.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%Stream.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%Tone.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%USBCore.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%WMath.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-ar" rcs "%WORKINGPATH%core.a" "%WORKINGPATH%WString.cpp.o"

"%ARDPAT%hardware\tools\avr\bin\avr-gcc" -w -Os -Wl,--gc-sections -mmcu=atmega328p -o "%WORKINGPATH%BinBlobLoader.cpp.elf" "%WORKINGPATH%blob.o" "%WORKINGPATH%BinBlobLoader.cpp.o" "%WORKINGPATH%core.a" -L"%WORKINGPATH%" -lm 

"%ARDPAT%hardware\tools\avr\bin\avr-objcopy" -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 "%WORKINGPATH%BinBlobLoader.cpp.elf" "%WORKINGPATH%BinBlobLoader.cpp.eep"

"%ARDPAT%hardware\tools\avr\bin\avr-objcopy" -O ihex -R .eeprom "%WORKINGPATH%BinBlobLoader.cpp.elf" "%WORKINGPATH%BinBlobLoader.cpp.hex" 
