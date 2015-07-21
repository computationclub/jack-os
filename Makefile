.PHONY: all test

all: MemoryTest/Memory.vm test

test:
	$(VM_EMULATOR) MemoryTest/MemoryTest.tst

MemoryTest/Memory.vm: Memory.jack
	$(JACK_COMPILER) Memory.jack > MemoryTest/Memory.vm
