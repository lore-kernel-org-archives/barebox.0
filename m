Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1WB7-0007xn-Fa
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 03:20:59 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  1 Oct 2010 05:19:12 +0200
Message-Id: <1285903152-5840-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285567954-1394-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3] MAKEALL: make it generic
To: barebox@lists.infradead.org

it's allow you to compile specific defconfig or ARCH or all
as

CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL

The cross-compiler can be specify via
    CROSS_COMPILE               default
    CROSS_COMPILE_<arch>        arch default
    CROSS_COMPILE_<target>      deconfig specifc

it will be evaluated in the invert order

or via config

you can specify it via env CONFIG or option -c (overwrite env)

CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL

and for all

CONFIG=./MAKEALL.cfg ./MAKEALL

you can specify via env or option
env       option
ARCH      -a      arch
CONFIG    -c      config
JOBS      -j      jobs
BUILDDIR  -O      build dir
LOGDIR    -l      log dir

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:
add getopts supports

add usage support

Best Rebards,
J.
 MAKEALL |  286 ++++++++++++++++++++++++++++++++++++++++++++++++++-------------
 1 files changed, 227 insertions(+), 59 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index dd0f66b..d42be6e 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,89 +1,257 @@
-#!/bin/bash
+#!/bin/sh
 
-check_pipe_status() {
-        for i in  "${PIPESTATUS[@]}"; do
-		[ $i -gt 0 ] && return 1
-        done
-	return 0
-}
+# Print statistics when we exit
+trap exit 1 2 3 15
+trap stats 0
 
+# Keep track of the number of builds and errors
+nb_errors=0
+errors_list=""
+nb_defconfigs=0
+ret=0
 
-HERE=$(pwd)
-AUTOBUILD_DIR=${HERE}/autobuild
-REPORT=${AUTOBUILD_DIR}/REPORT
+here=$(pwd)
 
-if [ -d "${AUTOBUILD_DIR}" ]; then
-	echo "warning: ${AUTOBUILD_DIR} exists, press <ctrl-c> to exit or wait for 3 seconds"
-	sleep 3
-	rm -fr ${AUTOBUILD_DIR}
-fi
+time_start=$(date +%s)
 
-mkdir -p ${AUTOBUILD_DIR}
+filename=`basename $0`
 
-BOARDS="${BOARDS} sandbox"
-sandbox_ARCH=sandbox
-sandbox_CROSS_COMPILE=
+is_print_stats=1
 
-BOARDS="${BOARDS} ipe337"
-ipe337_ARCH=blackfin
-ipe337_CROSS_COMPILE=bfin-elf-
+#-----------------------------------------------------------------------
 
-BOARDS="${BOARDS} netx_nxdb500"
-netx_nxdb500_ARCH=arm
-netx_nxdb500_CROSS_COMPILE=arm-v4t-linux-gnueabi-
+usage() {
+	is_print_stats=0
+	echo "Usage: ${filename} [OPTION]..."
+	echo "Barebox MAKEALL tools."
+	echo ""
+	echo "it's allow you to compile specific defconfig or ARCH or all"
+	echo "as"
+	echo ""
+	echo "CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig"
+	echo "CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL"
+	echo ""
+	echo "The cross-compiler can be specify via"
+	echo "    CROSS_COMPILE               default"
+	echo "    CROSS_COMPILE_<arch>        arch default"
+	echo "    CROSS_COMPILE_<target>      deconfig specifc"
+	echo ""
+	echo "it will be evaluated in the invert order"
+	echo ""
+	echo "or via config"
+	echo ""
+	echo "you can specify it via env CONFIG or option -c (overwrite env)"
+	echo ""
+	echo "CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig"
+	echo "CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL"
+	echo ""
+	echo "and for all"
+	echo ""
+	echo "CONFIG=./MAKEALL.cfg ./MAKEALL"
+	echo ""
+	echo "you can specify via env or option"
+	echo "env       option"
+	echo "ARCH      -a      arch"
+	echo "CONFIG    -c      config"
+	echo "JOBS      -j      jobs"
+	echo "BUILDDIR  -O      build dir"
+	echo "LOGDIR    -l      log dir"
+	echo ""
+}
 
-BOARDS="${BOARDS} pcm030"
-pcm030_ARCH=ppc
-pcm030_CROSS_COMPILE=powerpc-603e-linux-gnu-
+stats() {
+	[ ${is_print_stats} -lt 1 ] && return
 
-BOARDS="${BOARDS} pcm037"
-pcm037_ARCH=arm
-pcm037_CROSS_COMPILE=arm-1136jfs-linux-gnueabi-
+	echo ""
+	echo "--------------------- SUMMARY ----------------------------"
+	echo "defconfigs compiled: ${nb_defconfigs}"
+	time_stop=$(date +%s)
+	time_diff=$((${time_stop} - ${time_start}))
+	printf "compiled in %4is\n" ${time_diff}
+	if [ ${nb_errors} -gt 0 ] ; then
+		echo "defcongids with warnings or errors: ${nb_errors} (${errors_list} )"
+	fi
+	echo "----------------------------------------------------------"
+
+	exit ${ret}
+}
+
+check_pipe_status() {
+	for i in "${PIPESTATUS[@]}"
+	do
+		[ $i -gt 0 ] && return 1
+	done
+	return 0
+}
 
-BOARDS="${BOARDS} pcm038"
-pcm038_ARCH=arm
-pcm038_CROSS_COMPILE=arm-v4t-linux-gnueabi-
+do_build_target() {
+	local arch=$1
+	local target=$2
+	local target_time_start=$(date +%s)
+	local log_report="${LOGDIR}/${target}/report.log"
+	local log_err="${LOGDIR}/${target}/errors.log"
 
-for board in ${BOARDS}; do
+	rm -rf "${BUILDDIR}"
+	mkdir -p "${BUILDDIR}"
+	mkdir -p "${LOGDIR}/${target}"
+	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
-	time_start=$(date +%s)
-	arch=${board}_ARCH
-	cross_compile=${board}_CROSS_COMPILE
-	mkdir -p ${AUTOBUILD_DIR}/${board}
-	printf "%-20s defconfig: " ${board} | tee -a ${REPORT}
+	cross_compile=`eval echo '$CROSS_COMPILE_'${target}`
+	if [ ! "${cross_compile}" ]
+	then
+		cross_compile=`eval echo '$CROSS_COMPILE_'${arch}`
+		if [ ! "${cross_compile}" ]
+		then
+			cross_compile=${CROSS_COMPILE}
+		fi
+	fi
 
-	make -C ${HERE} \
-		O=${AUTOBUILD_DIR}/${board} \
-		ARCH=${!arch} \
-		${board}_defconfig \
-		> ${AUTOBUILD_DIR}/${board}.log 2>&1
+	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
+	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
 
+	printf "Configure: " | tee -a "${log_report}"
 	check_pipe_status
 	if [ "$?" = "0" ]; then
+		printf "OK     \n" | tee -a "${log_report}"
 
-		printf "OK     " | tee -a ${REPORT}
-		printf "compile: " ${board} | tee -a ${REPORT}
+		${MAKE} -j${JOBS} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
-		make -C ${HERE} \
-			O=${AUTOBUILD_DIR}/${board} \
-			ARCH=${!arch} \
-			CROSS_COMPILE=${!cross_compile} \
-			> ${AUTOBUILD_DIR}/${board}.log 2>&1
+		printf "Compile: " ${target} | tee -a "${log_report}"
 
 		check_pipe_status
 		if [ "$?" = "0" ]; then
-			printf "OK     " | tee -a ${REPORT}
+			printf "OK     \n" | tee -a "${log_report}"
+			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
 		else
-			printf "FAILED " | tee -a ${REPORT}
+			printf "FAILED \n" | tee -a "${log_report}"
+			ret=1
 		fi
+	else
+		printf "FAILED \n" | tee -a "${log_report}"
+		printf "Compile: ------ \n" | tee -a "${log_report}"
+		ret=1
+	fi
 
+	if [ -s "${log_err}" ] ; then
+		nb_errors=$((nb_errors + 1))
+		errors_list="${errors_list} ${target}"
 	else
-		printf "FAILED " | tee -a ${REPORT}
-		printf "compile: ------ " | tee -a ${REPORT}
+		rm "${log_err}"
 	fi
 
-	time_stop=$(date +%s)
-	time_diff=$(($time_stop - $time_start))
-	printf "%4is\n" $time_diff | tee -a ${REPORT}
+	nb_defconfigs=$((nb_defconfigs + 1))
+
+	target_time_stop=$(date +%s)
+	target_time_diff=$((${target_time_stop} - ${target_time_start}))
+	printf "Compiled in %4is\n" ${target_time_diff} | tee -a "${log_report}"
+}
+
+do_build() {
+	local arch=$1
+
+	for i in arch/${arch}/configs/*_defconfig
+	do
+		local target=$(basename $i)
+
+		do_build_target ${arch} ${target}
+	done
+}
+
+do_build_all() {
+	local build_target=0
+
+	for i in arch/*
+	do
+		local arch=$(basename $i)
+
+		if [ -d $i ]
+		then
+			do_build ${arch}
+			build_target=$((build_target + 1))
+		fi
+	done
+
+	return $build_target
+}
+
+while getopts "hc:j:O:l:a:" Option
+do
+case $Option in
+	a )
+		ARCH=${OPTARG}
+		;;
+	c )
+		CONFIG=${OPTARG}
+		;;
+	j )
+		JOBS=${OPTARG}
+		;;
+	l )
+		LOGDIR=${OPTARG}
+		;;
+	O )
+		BUILDDIR=${OPTARG}
+		;;
+	h )
+		usage
+		exit 0
+		;;
+esac
 done
 
+shift $((OPTIND - 1))
+
+if [ ! "${JOBS}" ] ; then
+	#linux, BSD, MacOS
+	nb_cpu=`getconf _NPROCESSORS_ONLN`
+
+	if [ $? -gt 0 ]
+	then
+		nb_cpu=1
+	fi
+
+	JOBS=$((${nb_cpu} * 2))
+fi
+
+if [ ! "${LOGDIR}" ]
+then
+	LOGDIR="log"
+fi
+
+if [ ! "${BUILDDIR}" ]
+then
+	BUILDDIR="makeall_builddir"
+fi
+
+if [ "${CONFIG}" ]
+then
+	source "${CONFIG}"
+fi
+
+[ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
+
+if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE}" ]
+then
+	echo "You need to specify a CONFIG or a CROSS_COMPILE"
+	usage
+	exit 1
+fi
+
+if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
+then
+	do_build_all
+	if [ $? -eq 0 ]
+	then
+		echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
+		usage
+		exit 1
+	fi
+	exit 0
+fi
+
+if [ $# -eq 0 ]
+then
+	do_build ${ARCH}
+else
+	do_build_target ${ARCH} $1
+fi
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
