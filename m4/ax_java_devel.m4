# Java discovery wrapper, defines JAVA_CPPFLAGS.

AC_DEFUN([AX_JAVA_DEVEL], [

    AX_PROG_JAVAC
    AX_PROG_JAVA
    AX_PROG_JAR
    AX_JNI_INCLUDE_DIR
    
    JAVA_CPPFLAGS=
    for JNI_INCLUDE_DIR in $JNI_INCLUDE_DIRS; do
      JAVA_CPPFLAGS="$JAVA_CPPFLAGS -I$JNI_INCLUDE_DIR"
    done

    AC_SUBST([JAVA_CPPFLAGS])
    AC_SUBST([javadir], ["${datadir}/java"])
])
