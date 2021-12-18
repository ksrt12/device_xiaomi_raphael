#!/bin/bash
if [ "$BUILD_OSS" == "1" ]; then
    export BUILD_VENDOR_TYPE=oss;
else
    export BUILD_VENDOR_TYPE=miui;
fi