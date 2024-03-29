#!/bin/bash
source ./env.sh

make clean
./build.sh

JLINK_OPTIONS="-device FE310 -if JTAG -speed 4000"
GDB=riscv64-unknown-elf-gdb
GDB_SCRIPT=debug.sh
PROGRAM=X-RTOS

# Start JLinkGDBServer and give it a moment
JLinkGDBServer $JLINK_OPTIONS &
sleep 2

# Create a GDB script
echo "target remote :2331" > $GDB_SCRIPT
echo "load" >> $GDB_SCRIPT
echo "c" >> $GDB_SCRIPT

# Run GDB with the script
$GDB -x $GDB_SCRIPT $PROGRAM

# Clean up
rm $GDB_SCRIPT