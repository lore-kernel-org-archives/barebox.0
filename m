Delivery-date: Thu, 22 Aug 2024 13:58:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S7-00CEpG-0B
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6S6-0005WS-E6
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lDIti73HqPitkmdJxHWfkqA3/JNBfqyOD2NzmGWyysc=; b=XyawRL85gwt2EemxzKrohLYIb8
	iP8df9CXmvKZsLW/y7bkjow3eItKfZt9UKPtfM8euHemYvYPuCu9Sy10DIEcEcxS3gtIW4bSM/EWA
	mpMk1JX6vBGYuizbXygrrPXFq+19E986ho8/yGsB1qEWUaOVmJ10SQCX129hH1OkIssmYSfegMR26
	Cf+eU+v1u6VEQph0qnuMNON6PzDsw0TDIjMyFEb4OQFBVtSTIID74u1WkGsrUt/MauXxxIeeIWmGU
	1C/G6irRs1GvSwtu/0gZ5lxMXiYGAefx1ZgEbrJWD0v1flIrlw+KPEWQTiNW/Qi8kHKbQDjZ2w5kW
	cYAfuvDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6Rd-0000000CfOY-44x2;
	Thu, 22 Aug 2024 11:57:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RZ-0000000CfKx-10In
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-00054s-S7; Thu, 22 Aug 2024 13:57:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-002Ey1-DA; Thu, 22 Aug 2024 13:57:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6RX-004y9I-11;
	Thu, 22 Aug 2024 13:57:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:57:27 +0200
Message-Id: <20240822115730.1184500-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
References: <20240822115730.1184500-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045733_325824_0E2F047F 
X-CRM114-Status: GOOD (  12.20  )
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
Subject: [PATCH 2/5] MAKEALL: return error code from do_build_target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The script currently records only if any config build failed to control
the exit code, but doesn't return an error code from each single
do_build_target. We need this though, when we start running the test
suite for successful builds, so let's add a return value and rename the
global ret variable to a more descriptive exitcode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 861d397814d9..df318c6d123c 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -8,7 +8,7 @@ warnings_list=""
 nb_errors=0
 errors_list=""
 nb_defconfigs=0
-ret=0
+exitcode=0
 
 time_start=$(date +%s)
 
@@ -72,7 +72,7 @@ stats() {
 	fi
 	echo "----------------------------------------------------------"
 
-	exit ${ret}
+	exit ${exitcode}
 }
 
 check_pipe_status() {
@@ -89,6 +89,7 @@ do_build_target() {
 	local target_time_start=$(date +%s)
 	local log_report="${LOGDIR}/${target}/report.log"
 	local log_err="${LOGDIR}/${target}/errors.log"
+	local err=0
 
 	[ "$INCREMENTAL" != "1" ] && rm -rf "${BUILDDIR}"
 	mkdir -p "${LOGDIR}/${target}"
@@ -148,12 +149,14 @@ do_build_target() {
 			printf "FAILED \n" | tee -a "${log_report}"
 			nb_errors=$((nb_errors + 1))
 			errors_list="${errors_list} ${target}"
-			ret=1
+			err=1
+			exitcode=1
 		fi
 	else
 		printf "FAILED \n" | tee -a "${log_report}"
 		printf "Compile: ------ \n" | tee -a "${log_report}"
-		ret=1
+		err=1
+		exitcode=1
 	fi
 
 	if [ -s "${log_err}" ] ; then
@@ -168,6 +171,8 @@ do_build_target() {
 	target_time_stop=$(date +%s)
 	target_time_diff=$((${target_time_stop} - ${target_time_start}))
 	printf "Compiled in %4is\n" ${target_time_diff} | tee -a "${log_report}"
+
+	return $err
 }
 
 do_build() {
-- 
2.39.2



