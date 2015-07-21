.PHONY: all test array-test memory-test

all: test

test: array-test memory-test

array-test: ArrayTest/Main.vm ArrayTest/Array.vm
	$(VM_EMULATOR) ArrayTest/ArrayTest.tst

memory-test: MemoryTest/Main.vm MemoryTest/Memory.vm
	$(VM_EMULATOR) MemoryTest/MemoryTest.tst

%Test/Main.vm: %Test/Main.jack
	$(JACK_COMPILER) $< > $@

MemoryTest/Memory.vm: Memory.jack
	$(JACK_COMPILER) Memory.jack > MemoryTest/Memory.vm

ArrayTest/Array.vm: Array.jack
	$(JACK_COMPILER) Array.jack > ArrayTest/Array.vm
