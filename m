Delivery-date: Wed, 26 Mar 2025 09:00:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgJ-004Ljx-1B
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgI-0005k5-5i
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qrjw9XrRJbYoadETHEYNbufUrzxd9QyNuR2fse5jDik=; b=XCzckkYxIZSh523calpN0BBINS
	DhrkFtcbenNrfzAlp3nDNkjwmNVXPWKRsyXtDuKdZb5OSW0Zgiia0sc03Edtt7B/ngoKjOxOycqTp
	SKAhlGGhVBMtjMT75pmCBDhtIO2DsuPvWAo7mUVZ9ITe1piS6OumgwORYTRBOZp2h7UpWbFVAzsX6
	XJrOi89bU8FWnqPI7woodMKCaO9d+rccPrreFaFXgCHt22fpaQ9ahf/qjNa64JgmRUrGQii3Ku4eb
	H2SJs+1jGTinGZcyyzPdrcuDHZGi28KNePj3XkwIe3pzYicHkomAZbQfqEPfatSXJW5Uj7aaw+NA/
	YklNQh0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfk-00000007qYW-4Agx;
	Wed, 26 Mar 2025 07:59:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSb-1qIy
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005KT-5I; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAp-1h;
	Wed, 26 Mar 2025 08:59:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-2l;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:16 +0100
Message-Id: <20250326075919.3448789-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_479828_BE502BEA 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH 3/6] MAKEALL: fix check_pipe_status usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When no logdir is specified, there is no shell pipeline to check the
status of and thus check_pipe_status will not check the status of the
just run command.

Fix this by placing check_pipe_status directly after the pipelines in
question.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index a9409fbf7b07..85b71e2e75c1 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -101,9 +101,12 @@ with_logs_collected() {
 
 	if [ -n "${logdir}" ]; then
 		"$@" 2>&1 > "${log_report}" | tee "${log_err}"
+		check_pipe_status
 	else
 		"$@"
 	fi
+
+	return $?
 }
 
 report() {
@@ -169,7 +172,6 @@ do_build_defconfig() {
 	done
 	with_logs_collected ${MAKE} $silent_flag olddefconfig
 
-	check_pipe_status
 	configure_result="$?"
 
 	report "Configure: "
@@ -178,8 +180,6 @@ do_build_defconfig() {
 		report "OK     \n"
 
 		with_logs_collected ${MAKE} $silent_flag ${TARGET}
-
-		check_pipe_status
 		compile_result="$?"
 
 		report "Compile: " ${defconfig}
@@ -230,8 +230,6 @@ do_test_defconfig() {
 	local err=0
 
 	LG_BUILDDIR=$BUILDDIR with_logs_collected pytest --lg-env $yaml "$@"
-
-	check_pipe_status
 	compile_result="$?"
 
 	report "Test: " ${yaml}
-- 
2.39.5



