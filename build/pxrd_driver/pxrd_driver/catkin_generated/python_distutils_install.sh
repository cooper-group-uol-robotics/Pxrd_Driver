#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/satheesh/Pxrd_Driver/src/pxrd_driver/pxrd_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/satheesh/Pxrd_Driver/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/satheesh/Pxrd_Driver/install/lib/python3/dist-packages:/home/satheesh/Pxrd_Driver/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/satheesh/Pxrd_Driver/build" \
    "/usr/bin/python3" \
    "/home/satheesh/Pxrd_Driver/src/pxrd_driver/pxrd_driver/setup.py" \
     \
    build --build-base "/home/satheesh/Pxrd_Driver/build/pxrd_driver/pxrd_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/satheesh/Pxrd_Driver/install" --install-scripts="/home/satheesh/Pxrd_Driver/install/bin"
