Delivery-date: Tue, 02 May 2023 09:41:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdq-0027nK-1Z
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdn-00036T-PD
	for lore@pengutronix.de; Tue, 02 May 2023 09:41:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8lhxNWWMRYnjLB0W3J+pcAs1mN5FeH3zYHtbBWriiE=; b=P6EIHCWp/ejHhuMo9sd7BvOurn
	RMnT+40pkjuo/ckOqkm7s72919Hxy2DJ6Vo4xc+rhUGd9egb3K9h+OysrBGOF/bwY7uRD0+Z1SGQ2
	5rUt9IPsztQm9MzJt2IIPx57vJp2+t0mqXWxJeT1/IwAU48a/j+NvyubQRDF09y/oEbPKVGxngkuq
	b+vcB9PrX7e8kL31iWKqWHndmBuVc0k662gKABqH/jKlrDdjWsrMRccYElfzzsZKWZu+VqJpiKQVB
	QFmKRxJHfwsae4kEPtpJH6ITMFg20PRRbE2TX1M8BCRKedeXL9G8IxvjM+N9shjo8sEOJl2h5/oWl
	XRtJ0xmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbs-000V0D-1q;
	Tue, 02 May 2023 07:39:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utx-0m
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y9-9P; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XQ5-Oa; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Mes-H1; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:24 +0200
Message-Id: <20230502073925.266116-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_323484_AE5C47F0 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 09/10] MAKEALL: separate errors and warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Count and print errors and warnings separately to get and overview which
configs failed and which ones issued warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index dc0fac0f44..039368b027 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -5,6 +5,8 @@
 # Keep track of the number of builds and errors
 nb_warnings=0
 warnings_list=""
+nb_errors=0
+errors_list=""
 nb_defconfigs=0
 ret=0
 
@@ -61,8 +63,11 @@ stats() {
 	time_stop=$(date +%s)
 	time_diff=$((${time_stop} - ${time_start}))
 	printf "compiled in %4is\n" ${time_diff}
+	if [ ${nb_errors} -gt 0 ] ; then
+		echo "defconfigs with errors: ${nb_errors} (${errors_list} )"
+	fi
 	if [ ${nb_warnings} -gt 0 ] ; then
-		echo "defconfigs with warnings or errors: ${nb_warnings} (${warnings_list} )"
+		echo "defconfigs with warnings: ${nb_warnings} (${warnings_list} )"
 	fi
 	echo "----------------------------------------------------------"
 
@@ -138,6 +143,8 @@ do_build_target() {
 			printf "OK     \n" | tee -a "${log_report}"
 		else
 			printf "FAILED \n" | tee -a "${log_report}"
+			nb_errors=$((nb_errors + 1))
+			errors_list="${errors_list} ${target}"
 			ret=1
 		fi
 	else
@@ -284,4 +291,4 @@ fi
 
 stats
 
-exit $nb_warnings
+exit ${nb_errors}
-- 
2.39.2



