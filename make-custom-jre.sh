#!/bin/sh
jlink --add-modules $(jdeps --ignore-missing-deps -quiet --recursive \
--print-module-deps --multi-release 21 \
--class-path=target/extract/dependencies/BOOT-INF/lib/* \
--module-path=target/extract/dependencies/BOOT-INF/lib/* \
target/extract/application/) \
--output customjre
