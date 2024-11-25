Delivery-date: Mon, 25 Nov 2024 16:13:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFamE-000FaO-1y
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFamC-00081F-Ou
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FxILBZKsHPmfPfU7ZjWuzstR55VcyYyV6PTW6tJiWl8=; b=D6LiUKh260WQ3h4CAJhUo/9/9X
	rzojeYFPM2l/rZvg/biBhGJ2duD79QtOSR2WjDXttsRYvg4f7Z/RB98VfGfo5+hliH0Gt29lKzN+a
	ttEMZm0B31CMBlIY4ILpbzHb/dNzrsRMPEKx2KZbMKjxPvnYfWu5KP3wDkW28chDDleZjZsIFhRXr
	AR/Kq+7YDEZYbeQ0Z5GyjhWQkxaEGZeA0Ri8bmZDFfFuxSdid6k/O1oFFRqflnQdAGZ1kwnPKDMBI
	1x1Nxwr/+p+01SRT9HXZ/hczbXZNNz89NVVGuP0uHmFcIZlvnvMP1IJX9ZMuiRkDi16LWHQPfiStA
	X20sGujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalh-00000008Px7-0qcO;
	Mon, 25 Nov 2024 15:12:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFald-00000008Ptc-2IRt
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalb-0007MS-TJ; Mon, 25 Nov 2024 16:12:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFala-0006N4-2P;
	Mon, 25 Nov 2024 16:12:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFala-001lui-2c;
	Mon, 25 Nov 2024 16:12:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:45 +0100
Message-Id: <20241125151246.422255-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071249_585217_201634AF 
X-CRM114-Status: GOOD (  13.95  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] MAKEALL: allow users to increase verbosity and sidestep logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

MAKEALL always logs into a LOGDIR, but the output is not very talkative,
because for compiling, make is always called with -s (silent) option,
which prevents both V=0 and V=1 from affecting the output.

To make the output of MAKEALL more usefuly from CI, we want V=0 to have
an effect (i.e. print messages like `CC     version.o') and all output
to go to stdout/stderr, because it's more user friendly to have the
output directly in the Github Actions log instead of being in a zip file
that needs to be downloaded.

The former, we achieve by removing -s whenever V= is set and the latter
we achieve by allowing logging to be disabled by setting an empty string
as log directory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 98 +++++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 64 insertions(+), 34 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 3b93bfe5660b..b43a134b06bc 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -12,6 +12,7 @@ nb_defconfigs=0
 nb_tests=0
 nb_tests_failed=0
 exitcode=0
+logdir="log"
 
 time_start=$(date +%s)
 
@@ -56,6 +57,7 @@ usage() {
 	echo "LOGDIR      -l      log dir"
 	echo "REGEX       -e      regex"
 	echo "KCONFIG_ADD -k      kconfig fragment"
+	echo "V           -v      verbosity"
 	echo "INCREMENTAL -i"
 	echo ""
 }
@@ -92,16 +94,36 @@ check_pipe_status() {
 	return 0
 }
 
+with_logs_collected() {
+	local log_report="${logdir}/${target}/report.log"
+	local log_err="${logdir}/${target}/errors.log"
+
+	if [ -n "${logdir}" ]; then
+		"$@" 2>&1 > "${log_report}" | tee "${log_err}"
+	else
+		"$@"
+	fi
+}
+
+report() {
+	local log_report="${logdir}/${target}/report.log"
+
+	if [ -n "${logdir}" ]; then
+		printf "$@" | tee -a "${log_report}"
+	else
+		printf "$@"
+	fi
+}
+
 do_build_target() {
 	local arch=$1
 	local target=$2
 	local target_time_start=$(date +%s)
-	local log_report="${LOGDIR}/${target}/report.log"
-	local log_err="${LOGDIR}/${target}/errors.log"
+	local log_err="${logdir}/${target}/errors.log"
 	local err=0
 
 	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
-	mkdir -p "${LOGDIR}/${target}"
+	[ -n "$logdir" ] && mkdir -p "${logdir}/${target}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
 	${MAKE} ${target} &>/dev/null
@@ -127,59 +149,62 @@ do_build_target() {
 		fi
 	fi
 
-	printf "Building ${arch} ${target} \n" >&2 | tee -a "${log_report}"
-	MAKE="${MAKE} CROSS_COMPILE=${cross_compile}"
-	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	[ -z "$V" ] && silent_flag=-s
+
+	report "Building ${arch} ${target} \n" >&2
+	MAKE="${MAKE} $silent_flag CROSS_COMPILE=${cross_compile}"
+	with_logs_collected ${MAKE} ${target}
 	for i in ${KCONFIG_ADD}; do
-		./scripts/kconfig/merge_config.sh -m -O \
-			${BUILDDIR} ${BUILDDIR}/.config $i \
-			2>&1 > "${log_report}" | tee "${log_err}"
+		with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
+			${BUILDDIR} ${BUILDDIR}/.config $i
 	done
-	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
+	with_logs_collected ${MAKE} $silent_flag olddefconfig
 
 	check_pipe_status
 	configure_result="$?"
 
-	printf "Configure: " | tee -a "${log_report}"
+	report "Configure: "
 
 	if [ "$configure_result" = "0" ]; then
-		printf "OK     \n" | tee -a "${log_report}"
+		report "OK     \n"
 
-		${MAKE} -s 2>&1 >> "${log_report}" | tee -a "${log_err}"
+		with_logs_collected ${MAKE} $silent_flag
 
 		check_pipe_status
 		compile_result="$?"
 
-		printf "Compile: " ${target} | tee -a "${log_report}"
+		report "Compile: " ${target}
 
 		if [ "$compile_result" = "0" ]; then
-			printf "OK     \n" | tee -a "${log_report}"
+			report "OK     \n"
 		else
-			printf "FAILED \n" | tee -a "${log_report}"
+			report "FAILED \n"
 			nb_errors=$((nb_errors + 1))
 			errors_list="${errors_list} ${target}"
 			err=1
 			exitcode=1
 		fi
 	else
-		printf "FAILED \n" | tee -a "${log_report}"
-		printf "Compile: ------ \n" | tee -a "${log_report}"
+		report "FAILED \n"
+		report "Compile: ------ \n"
 		err=1
 		exitcode=1
 	fi
 
-	if [ -s "${log_err}" ] ; then
-		nb_warnings=$((nb_warnings + 1))
-		warnings_list="${warnings_list} ${target}"
-	else
-		rm "${log_err}"
+	if [ -n "$logdir" ]; then
+		if [ -s "${log_err}" ] ; then
+			nb_warnings=$((nb_warnings + 1))
+			warnings_list="${warnings_list} ${target}"
+		else
+			rm "${log_err}"
+		fi
 	fi
 
 	nb_defconfigs=$((nb_defconfigs + 1))
 
 	target_time_stop=$(date +%s)
 	target_time_diff=$((${target_time_stop} - ${target_time_start}))
-	printf "Compiled in %4is\n" ${target_time_diff} | tee -a "${log_report}"
+	report "Compiled in %4is\n" ${target_time_diff}
 
 	return $err
 }
@@ -193,20 +218,19 @@ do_test_target() {
 	local target=$2
 	shift 2
 	local target_time_start=$(date +%s)
-	local log_report="${LOGDIR}/${target}/report.log"
 	local err=0
 
-	LG_BUILDDIR=$BUILDDIR pytest --lg-env $yaml "$@" 2>&1 >> "${log_report}"
+	LG_BUILDDIR=$BUILDDIR with_logs_collected pytest --lg-env $yaml "$@"
 
 	check_pipe_status
 	compile_result="$?"
 
-	printf "Test: " ${yaml} | tee -a "${log_report}"
+	report "Test: " ${yaml}
 
 	if [ "$compile_result" = "0" ]; then
-		printf "OK     \n" | tee -a "${log_report}"
+		report "OK     \n"
 	else
-		printf "FAILED \n" | tee -a "${log_report}"
+		report "FAILED \n"
 		nb_tests_failed=$((nb_tests_failed + 1))
 		test_errors_list="${test_errors_list} ${yaml}"
 		exitcode=1
@@ -217,7 +241,7 @@ do_test_target() {
 
 	target_time_stop=$(date +%s)
 	target_time_diff=$((${target_time_stop} - ${target_time_start}))
-	printf "Tested in %4is\n" ${target_time_diff} | tee -a "${log_report}"
+	report "Tested in %4is\n" ${target_time_diff}
 
 	return $err
 }
@@ -251,7 +275,7 @@ do_build_all() {
 	return $build_target
 }
 
-while getopts "hc:j:O:l:a:e:k:i" Option
+while getopts "hc:j:O:l:a:e:k:v:i" Option
 do
 case $Option in
 	a )
@@ -275,6 +299,9 @@ case $Option in
 	k )
 		KCONFIG_ADD="${KCONFIG_ADD} ${OPTARG}"
 		;;
+	v )
+		export V=${OPTARG}
+		;;
 	i )
 		INCREMENTAL=1
 		;;
@@ -299,9 +326,9 @@ if [ ! "${JOBS}" ] ; then
 	JOBS=$((${nb_cpu} * 2))
 fi
 
-if [ ! "${LOGDIR}" ]
+if [ -v LOGDIR ];
 then
-	LOGDIR="log"
+	logdir="$LOGDIR"
 fi
 
 if [ ! "${BUILDDIR}" ]
@@ -321,7 +348,10 @@ then
 	. "${CONFIG}"
 fi
 
-[ -d "${LOGDIR}" ] || mkdir ${LOGDIR} || exit 1
+if [ -n "$logdir" ] && [ ! -d "${logdir}" ]
+then
+	mkdir "${logdir}" || exit 1
+fi
 
 if [ ! "${REGEX}" ]
 then
-- 
2.39.5



