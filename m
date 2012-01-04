Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiVLM-0007Sn-Pw
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 18:13:45 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4E6471004E38
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 19:14:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Jan 2012 19:07:28 +0100
Message-Id: <1325700449-3778-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] at91rm9200: fix lowlovel init PIOC base
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 MAKEALL                                       |   52 +++++++++++++++++++-----
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    6 +-
 2 files changed, 44 insertions(+), 14 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 1ba4710..b97cb76 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -1,4 +1,4 @@
-#!/bin/bash
+#!/bin/sh
 
 # Print statistics when we exit
 trap exit 1 2 3 15
@@ -18,6 +18,8 @@ filename=`basename $0`
 
 is_print_stats=1
 
+KEEP=n
+
 #-----------------------------------------------------------------------
 
 usage() {
@@ -56,6 +58,8 @@ usage() {
 	echo "JOBS      -j      jobs"
 	echo "BUILDDIR  -O      build dir"
 	echo "LOGDIR    -l      log dir"
+	echo "REGEX     -e      regex"
+	echo "KEEP      -k      keep build dir"
 	echo ""
 }
 
@@ -90,9 +94,15 @@ do_build_target() {
 	local target_time_start=$(date +%s)
 	local log_report="${LOGDIR}/${target}/report.log"
 	local log_err="${LOGDIR}/${target}/errors.log"
+	local builddir="${BUILDDIR}"
 
-	rm -rf "${BUILDDIR}"
-	mkdir -p "${BUILDDIR}"
+	if [ "x${KEEP}" = "xy" ]
+	then
+		builddir="${BUILDDIR}/${target}"
+	else
+		rm -rf "${builddir}"
+	fi
+	mkdir -p "${builddir}"
 	mkdir -p "${LOGDIR}/${target}"
 	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
 
@@ -108,22 +118,25 @@ do_build_target() {
 		fi
 	fi
 
-	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} -j${JOBS} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	MAKE="make -C ${here} CROSS_COMPILE=${cross_compile} ARCH=${arch} O=${builddir} -j${JOBS}"
+	if [ ! -e "${builddir}/.config" ]
+	then
+		${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	fi
 
 	printf "Configure: " | tee -a "${log_report}"
 	check_pipe_status
 	if [ "$?" = "0" ]; then
 		printf "OK     \n" | tee -a "${log_report}"
 
-		${MAKE} -j${JOBS} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
+		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
 
 		printf "Compile: " ${target} | tee -a "${log_report}"
 
 		check_pipe_status
 		if [ "$?" = "0" ]; then
 			printf "OK     \n" | tee -a "${log_report}"
-			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
+			${cross_compile}size ${builddir}/barebox | tee -a "${log_report}"
 		else
 			printf "FAILED \n" | tee -a "${log_report}"
 			ret=1
@@ -150,8 +163,9 @@ do_build_target() {
 
 do_build() {
 	local arch=$1
+	local regex=$2
 
-	for i in arch/${arch}/configs/*_defconfig
+	find arch/${arch}/configs -name "${regex}_defconfig" | while read i
 	do
 		local target=$(basename $i)
 
@@ -176,7 +190,7 @@ do_build_all() {
 	return $build_target
 }
 
-while getopts "hc:j:O:l:a:" Option
+while getopts "hc:j:O:l:a:e:k" Option
 do
 case $Option in
 	a )
@@ -194,6 +208,12 @@ case $Option in
 	O )
 		BUILDDIR=${OPTARG}
 		;;
+	e )
+		REGEX=${OPTARG}
+		;;
+	k )
+		KEEP=y
+		;;
 	h )
 		usage
 		exit 0
@@ -234,11 +254,16 @@ then
 		CONFIG="./${CONFIG}"
 	fi
 
-	. "${CONFIG}"
+	source "${CONFIG}"
 fi
 
 [ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
 
+if [ ! "${REGEX}" ]
+then
+	REGEX="*"
+fi
+
 if [ ! "${CONFIG}" ] && [ ! "${CROSS_COMPILE+set}" ]
 then
 	echo "You need to specify a CONFIG or a CROSS_COMPILE"
@@ -258,9 +283,14 @@ then
 	exit 0
 fi
 
+if [ "x${KEEP}" != "xy" ]
+then
+	rm -rf "${BUILDDIR}"
+fi
+
 if [ $# -eq 0 ]
 then
-	do_build ${ARCH}
+	do_build ${ARCH} "${REGEX}"
 else
 	do_build_target ${ARCH} $1
 fi
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 8d9ae08..dc54bcf 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -101,11 +101,11 @@ void __naked __bare_init board_init_lowlevel(void)
 	 */
 
 	/* PIOC_ASR: Configure PIOC as peripheral (D16/D31) */
-	at91_sys_write(AT91_PIOC + PIO_ASR, CONFIG_SYS_PIOC_ASR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_ASR_VAL, AT91_BASE_PIOC + PIO_ASR);
 	/* PIOC_BSR */
-	at91_sys_write(AT91_PIOC + PIO_BSR, CONFIG_SYS_PIOC_BSR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_BSR_VAL, AT91_BASE_PIOC + PIO_BSR);
 	/* PIOC_PDR */
-	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL);
+	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91_BASE_PIOC + PIO_PDR);
 
 	/* EBI_CSA : CS1=SDRAM */
 	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
