AC_INIT()
AC_PROG_CC


AC_ARG_WITH([openblas-libpath],
  AC_HELP_STRING([--with-openblas-libpath=LIB_PATH], [location of OpenBLAS installation]),
  [OB_LIBPATH="-L/$withval"])

### TODO make more portable eventually maybe
if test "x$OB_LIBPATH" = "x"; then
  if test "x$(uname)" = "xDarwin"; then
    OB_LIBPATH="-L/usr/local/opt/openblas/lib/"
  fi
fi


LDFLAGS="$LDFLAGS $OB_LIBPATH"
AC_CHECK_LIB([openblas], [openblas_set_num_threads])


AC_SUBST(OB_LIBPATH)
AC_OUTPUT(src/Makevars)

