Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OzCLQ-0006pu-Gd
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 17:46:01 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 19:44:31 +0200
Message-Id: <1285350271-18637-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] MAKEALL: make it generic
To: barebox@lists.infradead.org

add MAKEALL.cfg example

it's allow you to compile specific defconfig or ARCH or all
as
CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL at91sam9263ek_defconfig
CROSS_COMPILE=arm-linux- ARCH=arm ./MAKEALL

or via config

CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL at91sam9263ek_defconfig
CONFIG=./MAKEALL.cfg ARCH=arm ./MAKEALL

and for all

CONFIG=./MAKEALL.cfg ./MAKEALL

you can speficfy
JOBS            jobs
BUILDDIR        build dir
LOGDIR          log dir

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 MAKEALL     |  193 +++++++++++++++++++++++++++++++++++++++++------------------
 MAKEALL.cfg |    7 ++
 2 files changed, 142 insertions(+), 58 deletions(-)
 create mode 100644 MAKEALL.cfg

diff --git a/MAKEALL b/MAKEALL
index dd0f66b..efc0cae 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,89 +1,166 @@
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
+trap print_stats 0
 
+if [ ! "${JOBS}" ] ; then
+	JOBS=8
+fi
 
-HERE=$(pwd)
-AUTOBUILD_DIR=${HERE}/autobuild
-REPORT=${AUTOBUILD_DIR}/REPORT
+if [ ! "${LOGDIR}" ] ; then
+	LOGDIR="LOG"
+fi
 
-if [ -d "${AUTOBUILD_DIR}" ]; then
-	echo "warning: ${AUTOBUILD_DIR} exists, press <ctrl-c> to exit or wait for 3 seconds"
-	sleep 3
-	rm -fr ${AUTOBUILD_DIR}
+if [ ! "${BUILDDIR}" ] ; then
+	BUILDIR="makeall_buildir"
 fi
 
-mkdir -p ${AUTOBUILD_DIR}
+[ -d ${LOGDIR} ] || mkdir ${LOGDIR} || exit 1
+
+if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE}" ] ; then
+	echo "You need to specify a CONFIG or a CROSS_COMPILE"
+	exit 1
+fi
 
-BOARDS="${BOARDS} sandbox"
-sandbox_ARCH=sandbox
-sandbox_CROSS_COMPILE=
+if [ "${CONFIG}" ]
+then
+	source "${CONFIG}"
+fi
 
-BOARDS="${BOARDS} ipe337"
-ipe337_ARCH=blackfin
-ipe337_CROSS_COMPILE=bfin-elf-
+# Keep track of the number of builds and errors
+nb_errors=0
+errors_list=""
+nb_defconfigs=0
+ret=0
 
-BOARDS="${BOARDS} netx_nxdb500"
-netx_nxdb500_ARCH=arm
-netx_nxdb500_CROSS_COMPILE=arm-v4t-linux-gnueabi-
+here=$(pwd) 
 
-BOARDS="${BOARDS} pcm030"
-pcm030_ARCH=ppc
-pcm030_CROSS_COMPILE=powerpc-603e-linux-gnu-
+#-----------------------------------------------------------------------
 
-BOARDS="${BOARDS} pcm037"
-pcm037_ARCH=arm
-pcm037_CROSS_COMPILE=arm-1136jfs-linux-gnueabi-
+print_stats() {
+	echo ""
+	echo "--------------------- SUMMARY ----------------------------"
+	echo "defconfigs compiled: ${nb_defconfigs}"
+	if [ ${nb_errors} -gt 0 ] ; then
+		echo "defcongids with warnings or errors: ${nb_errors} (${errors_list} )"
+	fi
+	echo "----------------------------------------------------------"
 
-BOARDS="${BOARDS} pcm038"
-pcm038_ARCH=arm
-pcm038_CROSS_COMPILE=arm-v4t-linux-gnueabi-
+	exit ${ret}
+}
 
-for board in ${BOARDS}; do
+check_pipe_status() {
+	for i in  "${PIPESTATUS[@]}"; do
+		[ $i -gt 0 ] && return 1
+	done
+	return 0
+}
 
-	time_start=$(date +%s)
-	arch=${board}_ARCH
-	cross_compile=${board}_CROSS_COMPILE
-	mkdir -p ${AUTOBUILD_DIR}/${board}
-	printf "%-20s defconfig: " ${board} | tee -a ${REPORT}
+do_build_target() {
+	local arch=$1
+	local target=$2
+	local time_start=$(date +%s)
+	local log_report="${LOGDIR}/${target}/report.log"
+	local log_err="${LOGDIR}/${target}/errors.log"
+
+	rm -rf "${BUILDIR}"
+	mkdir -p "${BUILDIR}"
+	mkdir -p "${LOGDIR}/${target}"
+	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
+
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
+	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=\"${BUILDIR}\""
+	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
 
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
+			${cross_compile}size ${BUILDIR}/barebox | tee -a "${log_report}"
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
 
+	nb_defconfigs=$((nb_defconfigs + 1))
+
 	time_stop=$(date +%s)
-	time_diff=$(($time_stop - $time_start))
-	printf "%4is\n" $time_diff | tee -a ${REPORT}
-done
+	time_diff=$((${time_stop} - ${time_start}))
+	printf "Compiled in %4is\n" ${time_diff} | tee -a "${log_report}"
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
+if [ ! "${ARCH}" ] || [ ! -d arch/${ARCH} ]
+then
+	do_build_all
+	if [ $? -eq 0 ]
+	then
+		echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
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
diff --git a/MAKEALL.cfg b/MAKEALL.cfg
new file mode 100644
index 0000000..ba8fa10
--- /dev/null
+++ b/MAKEALL.cfg
@@ -0,0 +1,7 @@
+
+CROSS_COMPILE_arm=/opt/arm-2007q3/bin/arm-none-linux-gnueabi-
+CROSS_COMPILE_m68k=m68k-uclinux-
+CROSS_COMPILE_blackfin=/opt/uClinux/bfin-linux-uclibc/bin/bfin-linux-uclibc-
+CROSS_COMPILE_ppc=/opt/powerpc/bin/powerpc-unknown-linux-gnu-
+CROSS_COMPILE_sandbox=/usr/bin/
+CROSS_COMPILE_x86=/usr/bin/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
