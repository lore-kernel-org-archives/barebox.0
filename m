Delivery-date: Tue, 02 May 2023 09:40:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd6-0027jV-0W
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:40:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd3-0002dD-Uv
	for lore@pengutronix.de; Tue, 02 May 2023 09:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YLjkCN9/pEgmfcE3JXHYJ7SMOeLDDZx6zsqCV+6Ahu0=; b=fyhcLRaYQjmo7QIT80F3/EjaLx
	vs5YhX+qxvpwchYlSe5wKNM6tfnOfCk4wRjDwB2Cm3YSptUPa5aICiVilep+btrFwbcLHp6DOVrFr
	m06QqOb3VPpLt2SGjKXrCh0u4U0WugOJCwB4JvJMIe/UOIoDjI6IrTsRISqAAYxXtmIB3twVIIhpD
	EVg4d1QwAsqLwce+UbRtd2zWeP+yVT9W0SSBcodW61KdPpdZVIcBP9MQzHKIuhaDyzKyLrwAgLbxy
	683ye+zr5lku/TR9ryNhntYYKIQk6BUN5ZXZvLlRdOdTsbh9rcavvx6mDDDTm1bCx5a9rrrmxEtJQ
	uJ/pzBSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbr-000UzF-0w;
	Tue, 02 May 2023 07:39:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utu-0e
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y5-5w; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XPt-JN; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Meh-GD; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:23 +0200
Message-Id: <20230502073925.266116-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_248404_4E316F37 
X-CRM114-Status: GOOD (  10.27  )
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
Subject: [PATCH 08/10] MAKEALL: rename variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

nb_errors and errors_list contain the number/list of warnings, not
errors, so rename the variables accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 3ea0087a29..dc0fac0f44 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -3,8 +3,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 # Keep track of the number of builds and errors
-nb_errors=0
-errors_list=""
+nb_warnings=0
+warnings_list=""
 nb_defconfigs=0
 ret=0
 
@@ -61,8 +61,8 @@ stats() {
 	time_stop=$(date +%s)
 	time_diff=$((${time_stop} - ${time_start}))
 	printf "compiled in %4is\n" ${time_diff}
-	if [ ${nb_errors} -gt 0 ] ; then
-		echo "defconfigs with warnings or errors: ${nb_errors} (${errors_list} )"
+	if [ ${nb_warnings} -gt 0 ] ; then
+		echo "defconfigs with warnings or errors: ${nb_warnings} (${warnings_list} )"
 	fi
 	echo "----------------------------------------------------------"
 
@@ -147,8 +147,8 @@ do_build_target() {
 	fi
 
 	if [ -s "${log_err}" ] ; then
-		nb_errors=$((nb_errors + 1))
-		errors_list="${errors_list} ${target}"
+		nb_warnings=$((nb_warnings + 1))
+		warnings_list="${warnings_list} ${target}"
 	else
 		rm "${log_err}"
 	fi
@@ -284,4 +284,4 @@ fi
 
 stats
 
-exit $nb_errors
+exit $nb_warnings
-- 
2.39.2



