cmake_minimum_required(VERSION 3.4)
project(HelloSwift)

add_custom_target(
        COMMAND /home/gdc/dev/swift-2.2/usr/bin/swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
        SOURCES Package.swift main.swift)