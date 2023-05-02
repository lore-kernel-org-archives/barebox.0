Delivery-date: Tue, 02 May 2023 09:40:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd8-0027jb-6M
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:40:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd6-0002eY-2P
	for lore@pengutronix.de; Tue, 02 May 2023 09:40:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Up9VqX9vo1ZVhK8ujjYExr0eeMLjMO+r6Ln8RXrTS94=; b=Hw86cCfm+pwfk5Fn0V/+JQgzJa
	hA91VTRf9ctqotXwqLQutXOfw1Djh/nCX8DFjm5KszAEgtwkrFUTfIoh8mfvwIekpWnNzuouio007
	5l5GwQr1+zVC4QmKcqPyy4zyqunjL7AhCCgaNUygwCY1oShWS/cDpr2DF6m3I1nfs4Zu1+8evTcmf
	HjPado8C+6P3Kjx0pkeMD/ju/H0ZPObRWs18gk/T8im19yYeIuHMtApgxsftac+HS9lBtEaoS8d3j
	VhYhywSjBOcYVM0TzP3F7niWX4+F6j3HlSzv4zSKGIBBVbu/OJ6W8g2RstwLCuG7c+Lt5EgkXr/J9
	MahYBipg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbr-000V00-2s;
	Tue, 02 May 2023 07:39:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utz-0j
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001yJ-Dy; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XQE-Vf; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001MeX-FQ; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:22 +0200
Message-Id: <20230502073925.266116-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_283058_7B304DE0 
X-CRM114-Status: GOOD (  10.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/10] MAKEALL: support Kconfig fragments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the ability to add kconfig fragments before building a defconfig.
The fragments can be added by either the -k option or by setting
the KCONFIG_ADD envrionment variable to a list of filenames.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 75f2f63a1d..3ea0087a29 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -43,13 +43,14 @@ usage() {
 	echo "CONFIG=./MAKEALL.cfg ./MAKEALL"
 	echo ""
 	echo "you can specify via env or option"
-	echo "env       option"
-	echo "ARCH      -a      arch"
-	echo "CONFIG    -c      config"
-	echo "JOBS      -j      jobs"
-	echo "BUILDDIR  -O      build dir"
-	echo "LOGDIR    -l      log dir"
-	echo "REGEX     -e      regex"
+	echo "env         option"
+	echo "ARCH        -a      arch"
+	echo "CONFIG      -c      config"
+	echo "JOBS        -j      jobs"
+	echo "BUILDDIR    -O      build dir"
+	echo "LOGDIR      -l      log dir"
+	echo "REGEX       -e      regex"
+	echo "KCONFIG_ADD -k      kconfig fragment"
 	echo ""
 }
 
@@ -91,6 +92,12 @@ do_build_target() {
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
 	${MAKE} ${target} 2>&1 > "${log_report}" | tee "${log_err}"
+	for i in ${KCONFIG_ADD}; do
+		./scripts/kconfig/merge_config.sh -m -O \
+			${BUILDDIR} ${BUILDDIR}/.config $i \
+			2>&1 > "${log_report}" | tee "${log_err}"
+	done
+	${MAKE} olddefconfig 2>&1 > "${log_report}" | tee "${log_err}"
 
 	check_pipe_status
 	configure_result="$?"
@@ -182,7 +189,7 @@ do_build_all() {
 	return $build_target
 }
 
-while getopts "hc:j:O:l:a:e:" Option
+while getopts "hc:j:O:l:a:e:k:" Option
 do
 case $Option in
 	a )
@@ -203,6 +210,9 @@ case $Option in
 	e )
 		REGEX=${OPTARG}
 		;;
+	k )
+		KCONFIG_ADD="${KCONFIG_ADD} ${OPTARG}"
+		;;
 	h )
 		usage
 		exit 0
-- 
2.39.2



