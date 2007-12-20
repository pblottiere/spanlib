################################################################################
### SpanLib
### Raynaud 2006
################################################################################
# Colorisation for fun!
################################################################################
AC_DEFUN([AC_SR_SET_YELLOWINK],
[
	echo -en "\\033\\1330;33m"
])

AC_DEFUN([AC_SR_SET_REDINK],
[
	echo -en "\\033\\1330;31m"
])

AC_DEFUN([AC_SR_SET_GREENINK],
[
	AS_VAR_SET([GREEN],["\\033\\1330;32m"])
	echo -en AS_VAR_GET([GREEN])
])

AC_DEFUN([AC_SR_SET_NORMALINK],
[
	AS_VAR_SET([NORMAL],["\\033\\1330;39m"])
	echo -en AS_VAR_GET([NORMAL])
])

################################################################################
# Special messages
################################################################################
AC_DEFUN([AC_SR_HEADER],
[
	dnl AC_SR_SET_GREENINK
	echo "################################################################################"
	echo -e "### $1"
	echo "################################################################################"
	dnl AC_SR_SET_NORMALINK
])

AC_DEFUN([AC_SR_WARNING],
[
	dnl AC_SR_SET_YELLOWINK
	echo "################################################################################"
	echo -e "$1"
	echo "################################################################################"
	dnl AC_SR_SET_NORMALINK
])

AC_DEFUN([AC_SR_ERROR],
[
	dnl AC_SR_SET_REDINK
	echo "################################################################################"
	echo -e "$1"
	echo "################################################################################"
	dnl AC_SR_SET_NORMALINK
	exit 1
])
################################################################################
################################################################################
################################################################################

