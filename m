Delivery-date: Thu, 22 Aug 2024 13:58:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S9-00CEpc-07
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:58:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S8-0005XU-6M
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:58:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9cTFXKWwsZt49cNRrlZAR3+WblfXHUVazoMj3P18o2I=; b=NhIF8UzANe2g/K297f22HRpxkx
	VgCTLspezLOvMd012CUs9ruoJdoWUt0epJk7ss4EKQKcwaxMgZ2+nsLId45QV1QLv/xN95CZ1Qcua
	4XWbT6E/UU7VL7wvhhwOk1EjCv09WLZxpObqMb1U+/83r0eXdUfmX4L/std4zPNcA84xp/1+O1ufT
	Tz6x+UoKA8aTXv/qfMWEvaHh0YQfuesriuJAY1x/sUr24W1R84dhiI4MT9vD8QSFbg9diJFGpm/SB
	BPkvdq53Q+N2g/RdVF9JPLYVB1bHjGtsXdR8xFSVucQ/Lo7BOp1kD8s8EFxpylSYCKcxwDogpn8Pr
	vW+Ma3Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rf-0000000CfPe-2xhF;
	Thu, 22 Aug 2024 11:57:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RZ-0000000CfL3-1S7R
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RY-00054u-0c; Thu, 22 Aug 2024 13:57:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-002Ey7-GD; Thu, 22 Aug 2024 13:57:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-004y9I-1J;
	Thu, 22 Aug 2024 13:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:29 +0200
Message-Id: <20240822115730.1184500-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
References: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045733_477663_22CC161F 
X-CRM114-Status: GOOD (  12.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] MAKEALL: add support for running pytest after build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As a first step towards removal of emulate.pl, let's teach MAKEALL to
accept labgrid environment YAML files instead of defconfigs, in which
case the will be built.

A bit of extra care is needed, because some YAMLs are symlinks and we
don't want to needlessly build/test more than once.

The benefit of this is that we can have a single command to get QEMU
running on a target, e.g.:

  scripts/container.sh ./MAKEALL test/arm/multi_v8_defconfig.yaml

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 102 ++++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 96 insertions(+), 6 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 68ebe6ef98a3..3b93bfe5660b 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -7,7 +7,10 @@ nb_warnings=0
 warnings_list=""
 nb_errors=0
 errors_list=""
+test_errors_list=""
 nb_defconfigs=0
+nb_tests=0
+nb_tests_failed=0
 exitcode=0
 
 time_start=$(date +%s)
@@ -61,15 +64,21 @@ stats() {
 	echo ""
 	echo "--------------------- SUMMARY ----------------------------"
 	echo "defconfigs compiled: ${nb_defconfigs}"
-	time_stop=$(date +%s)
-	time_diff=$((${time_stop} - ${time_start}))
-	printf "compiled in %4is\n" ${time_diff}
 	if [ ${nb_errors} -gt 0 ] ; then
-		echo "defconfigs with errors: ${nb_errors} (${errors_list} )"
+		echo -e "\tdefconfigs with errors:   ${nb_errors} (${errors_list} )"
 	fi
 	if [ ${nb_warnings} -gt 0 ] ; then
-		echo "defconfigs with warnings: ${nb_warnings} (${warnings_list} )"
+		echo -e "\tdefconfigs with warnings: ${nb_warnings} (${warnings_list} )"
 	fi
+	if [ ${nb_tests} -gt 0 ]; then
+		echo "defconfigs tested:   ${nb_tests}"
+		if [ "${nb_tests_failed}" -gt 0 ]; then
+			echo -e "\tdefconfigs with errors:   ${nb_tests_failed} (${test_errors_list} )"
+		fi
+	fi
+	time_stop=$(date +%s)
+	time_diff=$((${time_stop} - ${time_start}))
+	printf "Total time spent: %4is\n" ${time_diff}
 	echo "----------------------------------------------------------"
 
 	exit ${exitcode}
@@ -175,6 +184,44 @@ do_build_target() {
 	return $err
 }
 
+if command -v labgrid-pytest >/dev/null; then
+	alias pytest=labgrid-pytest
+fi
+
+do_test_target() {
+	local yaml=$1
+	local target=$2
+	shift 2
+	local target_time_start=$(date +%s)
+	local log_report="${LOGDIR}/${target}/report.log"
+	local err=0
+
+	LG_BUILDDIR=$BUILDDIR pytest --lg-env $yaml "$@" 2>&1 >> "${log_report}"
+
+	check_pipe_status
+	compile_result="$?"
+
+	printf "Test: " ${yaml} | tee -a "${log_report}"
+
+	if [ "$compile_result" = "0" ]; then
+		printf "OK     \n" | tee -a "${log_report}"
+	else
+		printf "FAILED \n" | tee -a "${log_report}"
+		nb_tests_failed=$((nb_tests_failed + 1))
+		test_errors_list="${test_errors_list} ${yaml}"
+		exitcode=1
+		err=1
+	fi
+
+	nb_tests=$((nb_tests + 1))
+
+	target_time_stop=$(date +%s)
+	target_time_diff=$((${target_time_stop} - ${target_time_start}))
+	printf "Tested in %4is\n" ${target_time_diff} | tee -a "${log_report}"
+
+	return $err
+}
+
 do_build() {
 	local arch=$1
 	local regex=$2
@@ -297,8 +344,51 @@ then
 
 	do_build ${ARCH} "${REGEX}"
 else
+	declare -a configs=()
+	declare -a pytest_opts=()
 	for i in $*; do
-		do_build_target ${ARCH} $i
+		if [[ "$i" = "-"* ]] || [ ${#pytest_opts[@]} -gt 0 ]; then
+			pytest_opts+=($i)
+			continue;
+		fi
+
+		skip=0
+
+		# test/*/ may contain local symlinks, so resolve them
+		for j in "${configs[@]}"; do
+			if [ "$i" = "$j" ]; then
+				skip=1
+				break
+			fi
+
+			# drop duplicates, e.g. via globbing in directory with symlinks
+			if [[ $i =~ / && $j =~ / &&
+			   "$(readlink -f $i)" == "$(readlink -f $j)" ]]; then
+				skip=1
+				break
+			fi
+		done
+
+		if [ $skip = 1 ]; then
+			continue;
+		fi
+
+		configs+=($i)
+	done
+	for i in "${configs[@]}"; do
+		config=$i
+		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
+			arch=${BASH_REMATCH[1]}
+			defconfig=${BASH_REMATCH[3]}
+			do_build_target $arch $defconfig
+			if [ $? -eq 0 ]; then
+				do_test_target $config $defconfig "${pytest_opts[@]}"
+			else
+				echo "Skipping test due to failed build"
+			fi
+		else
+			do_build_target ${ARCH} $config
+		fi
 	done
 fi
 
-- 
2.39.2



