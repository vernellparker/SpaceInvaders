
.PHONY: build
build:
	mkdir -p build
	cd build && \
	cmake .. && \
	make

.PHONY: debug
debug:
	mkdir build
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=debug .. && \
	make

.PHONY: play
play:
	cd build && \
	cmake --build . && \
	cd Debug &&\
	SpaceInvaders.exe

.PHONY: clean
clean:
	rm -rf build