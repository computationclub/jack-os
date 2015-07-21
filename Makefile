.PHONY: all test

all: test

test: MemoryTest/Main.vm MemoryTest/Memory.vm
	$(VM_EMULATOR) MemoryTest/MemoryTest.tst

MemoryTest/Main.vm: MemoryTest/Main.jack
	$(JACK_COMPILER) MemoryTest/Main.jack > MemoryTest/Main.vm

MemoryTest/Memory.vm: Memory.jack
	$(JACK_COMPILER) Memory.jack > MemoryTest/Memory.vm
