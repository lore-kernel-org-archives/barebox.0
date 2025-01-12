Delivery-date: Sun, 12 Jan 2025 09:39:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVe-0007kq-1x
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:39:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtVd-0007fs-Rw
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:39:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mPsQFJvckIhP9Btnnqh38YSi9GVCDeMpfWj9AHBAKik=; b=yLmjdgUYKaMoAt3GfxvYPsYXUc
	x2CVabDmZoMkbpVyryymbcO1jb6yDjvo+G0E+okJOTNIHB5dQUNt1n5MzNh0uPa7d3TT0U69rvXXZ
	Rg/Mcd3b4Vc/unV3QKtmj4N5Kc5m+Vh11+RUzQi+dVn5SefWg/eVIbLqIRmWY3S22bsY403E4h9Da
	feKKsuqQHpcTSj+qmWkafGrf4KTTVtpsqK5IFs/F5fVQXEBl4IbRd+osxY0jWXbml50suPX++XBsr
	bv02XaoaqvvhLMuK9QJXwtpw4iOLgDSpIR+lsFbfqt9Z79JM4UjJzQYpAYXGlfLBMj3ko5oJ2Qoxt
	nRMfq9lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtVC-00000002Lol-3tNf;
	Sun, 12 Jan 2025 08:39:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtV8-00000002LmO-2sm5
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV7-0007UW-7Y; Sun, 12 Jan 2025 09:39:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtV6-0003P1-1j;
	Sun, 12 Jan 2025 09:39:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-2U;
	Sun, 12 Jan 2025 09:34:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:30 +0100
Message-Id: <20250112083432.320215-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003918_738952_56F3DE4D 
X-CRM114-Status: GOOD (  12.38  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/13] MAKEALL: rename target in symbols to more appropiate defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The script uses target to mean either defconfig or build step.
In preparation for adding the ability to specify actual make targets
that should be run besides the default of `all', let's rename all
instances of target otherwise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 68 ++++++++++++++++++++++++++++-----------------------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index b43a134b06bc..65cc41824cd8 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -33,7 +33,7 @@ usage() {
 	echo "The cross-compiler can be specify via"
 	echo "    CROSS_COMPILE               default"
 	echo "    CROSS_COMPILE_<arch>        arch default"
-	echo "    CROSS_COMPILE_<target>      defconfig specific"
+	echo "    CROSS_COMPILE_<defconfig>   defconfig specific"
 	echo ""
 	echo "it will be evaluated in the invert order"
 	echo ""
@@ -95,8 +95,8 @@ check_pipe_status() {
 }
 
 with_logs_collected() {
-	local log_report="${logdir}/${target}/report.log"
-	local log_err="${logdir}/${target}/errors.log"
+	local log_report="${logdir}/${defconfig}/report.log"
+	local log_err="${logdir}/${defconfig}/errors.log"
 
 	if [ -n "${logdir}" ]; then
 		"$@" 2>&1 > "${log_report}" | tee "${log_err}"
@@ -106,7 +106,7 @@ with_logs_collected() {
 }
 
 report() {
-	local log_report="${logdir}/${target}/report.log"
+	local log_report="${logdir}/${defconfig}/report.log"
 
 	if [ -n "${logdir}" ]; then
 		printf "$@" | tee -a "${log_report}"
@@ -115,18 +115,18 @@ report() {
 	fi
 }
 
-do_build_target() {
+do_build_defconfig() {
 	local arch=$1
-	local target=$2
-	local target_time_start=$(date +%s)
-	local log_err="${logdir}/${target}/errors.log"
+	local defconfig=$2
+	local step_time_start=$(date +%s)
+	local log_err="${logdir}/${defconfig}/errors.log"
 	local err=0
 
 	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
-	[ -n "$logdir" ] && mkdir -p "${logdir}/${target}"
+	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} ${target} &>/dev/null
+	${MAKE} ${defconfig} &>/dev/null
 
 	if [ ${arch} = "arm" ]; then
 		grep -q "CONFIG_ARM64=y" ${BUILDDIR}/.config
@@ -135,7 +135,7 @@ do_build_target() {
 		fi
 	fi
 
-	tmp=$(echo "${target}" | tr - _)
+	tmp=$(echo "${defconfig}" | tr - _)
 
 	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
 	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
@@ -151,9 +151,9 @@ do_build_target() {
 
 	[ -z "$V" ] && silent_flag=-s
 
-	report "Building ${arch} ${target} \n" >&2
+	report "Building ${arch} ${defconfig} \n" >&2
 	MAKE="${MAKE} $silent_flag CROSS_COMPILE=${cross_compile}"
-	with_logs_collected ${MAKE} ${target}
+	with_logs_collected ${MAKE} ${defconfig}
 	for i in ${KCONFIG_ADD}; do
 		with_logs_collected ./scripts/kconfig/merge_config.sh -m -O \
 			${BUILDDIR} ${BUILDDIR}/.config $i
@@ -173,14 +173,14 @@ do_build_target() {
 		check_pipe_status
 		compile_result="$?"
 
-		report "Compile: " ${target}
+		report "Compile: " ${defconfig}
 
 		if [ "$compile_result" = "0" ]; then
 			report "OK     \n"
 		else
 			report "FAILED \n"
 			nb_errors=$((nb_errors + 1))
-			errors_list="${errors_list} ${target}"
+			errors_list="${errors_list} ${defconfig}"
 			err=1
 			exitcode=1
 		fi
@@ -194,7 +194,7 @@ do_build_target() {
 	if [ -n "$logdir" ]; then
 		if [ -s "${log_err}" ] ; then
 			nb_warnings=$((nb_warnings + 1))
-			warnings_list="${warnings_list} ${target}"
+			warnings_list="${warnings_list} ${defconfig}"
 		else
 			rm "${log_err}"
 		fi
@@ -202,9 +202,9 @@ do_build_target() {
 
 	nb_defconfigs=$((nb_defconfigs + 1))
 
-	target_time_stop=$(date +%s)
-	target_time_diff=$((${target_time_stop} - ${target_time_start}))
-	report "Compiled in %4is\n" ${target_time_diff}
+	step_time_stop=$(date +%s)
+	step_time_diff=$((${step_time_stop} - ${step_time_start}))
+	report "Compiled in %4is\n" ${step_time_diff}
 
 	return $err
 }
@@ -213,11 +213,11 @@ if command -v labgrid-pytest >/dev/null; then
 	alias pytest=labgrid-pytest
 fi
 
-do_test_target() {
+do_test_defconfig() {
 	local yaml=$1
-	local target=$2
+	local defconfig=$2
 	shift 2
-	local target_time_start=$(date +%s)
+	local step_time_start=$(date +%s)
 	local err=0
 
 	LG_BUILDDIR=$BUILDDIR with_logs_collected pytest --lg-env $yaml "$@"
@@ -239,9 +239,9 @@ do_test_target() {
 
 	nb_tests=$((nb_tests + 1))
 
-	target_time_stop=$(date +%s)
-	target_time_diff=$((${target_time_stop} - ${target_time_start}))
-	report "Tested in %4is\n" ${target_time_diff}
+	step_time_stop=$(date +%s)
+	step_time_diff=$((${step_time_stop} - ${step_time_start}))
+	report "Tested in %4is\n" ${step_time_diff}
 
 	return $err
 }
@@ -252,14 +252,14 @@ do_build() {
 
 	configs=$(find arch/${arch}/configs -name "${regex}_defconfig" | sort)
 	for i in ${configs}; do
-		local target=$(basename $i)
+		local defconfig=$(basename $i)
 
-		do_build_target ${arch} ${target}
+		do_build_defconfig ${arch} ${defconfig}
 	done
 }
 
 do_build_all() {
-	local build_target=0
+	local nbuilds=0
 
 	for i in arch/*
 	do
@@ -268,11 +268,11 @@ do_build_all() {
 		if [ -d $i ]
 		then
 			do_build ${arch} "*"
-			build_target=$((build_target + 1))
+			nbuilds=$((nbuilds + 1))
 		fi
 	done
 
-	return $build_target
+	return $nbuilds
 }
 
 while getopts "hc:j:O:l:a:e:k:v:i" Option
@@ -365,7 +365,7 @@ then
 		do_build_all
 		if [ $? -eq 0 ]
 		then
-			echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<target> in your config file"
+			echo "You need to specify the ARCH or CROSS_COMPILE_<arch> or CROSS_COMPILE_<defconfig> in your config file"
 			usage
 			exit 1
 		fi
@@ -410,14 +410,14 @@ else
 		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
 			arch=${BASH_REMATCH[1]}
 			defconfig=${BASH_REMATCH[3]}
-			do_build_target $arch $defconfig
+			do_build_defconfig $arch $defconfig
 			if [ $? -eq 0 ]; then
-				do_test_target $config $defconfig "${pytest_opts[@]}"
+				do_test_defconfig $config $defconfig "${pytest_opts[@]}"
 			else
 				echo "Skipping test due to failed build"
 			fi
 		else
-			do_build_target ${ARCH} $config
+			do_build_defconfig ${ARCH} $config
 		fi
 	done
 fi
-- 
2.39.5



