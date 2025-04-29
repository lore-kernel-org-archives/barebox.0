Delivery-date: Tue, 29 Apr 2025 16:15:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9lk3-000WCD-2K
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:15:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9lk3-0000nP-5b
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:15:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xavPM3H7gmf2FyGxdgFbW+njB3dp6wEr0LmppICoJiQ=; b=QL65ZDZGgaAoLa8S7KuRjxq8bu
	giJvYYxlApkjDCeVxjH4OzTIjU1sApTEpyO6xcD66eR4bVn5IzWdmrzvD7eV3bTPTfQiGr6lmA+dk
	nIRWsiKpfPzzeiypXqcmeimJwHioudemwk6NAD3tcfkPxVfnwztgZk8D7Cwwa454jt4TkO8QQN4N0
	kRGOKUnpULMb4ZPpaQtE3W0rpH3SnlMN6PduA94PKAvMtaX7wya422as6ZjEMjsfEtQFduOnKZnqN
	xewqz4Ci2Fs0P05t7tviYQQOSkdogr8K8dQSCBilait+QuAHPl9zFz8l4NX1itipC1jj7Fu9GgW9D
	M6S0dsCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljc-00000009usz-0CMT;
	Tue, 29 Apr 2025 14:14:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9laM-00000009qWN-2bFw
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:05:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9laK-0002Dk-2k; Tue, 29 Apr 2025 16:05:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9laJ-000H1y-2t;
	Tue, 29 Apr 2025 16:05:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9laJ-00Cpue-2U;
	Tue, 29 Apr 2025 16:05:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 29 Apr 2025 16:05:18 +0200
Message-Id: <20250429140518.3059481-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_070522_655543_C7236B26 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: am65-cpsw-nuss: fix common enable counter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The cpsw common is ought to be reference counted, but the reference
counter is only ever increased to one. Increase the reference for
additional am65_cpsw_common_start() calls.

This fixes a warning when barebox is shut down:

ERROR: 8000000.ethernet@8000000.of: dma failed with -22

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/am65-cpsw-nuss.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/am65-cpsw-nuss.c b/drivers/net/am65-cpsw-nuss.c
index 651b0b29cf..6b5a5d9533 100644
--- a/drivers/net/am65-cpsw-nuss.c
+++ b/drivers/net/am65-cpsw-nuss.c
@@ -274,8 +274,10 @@ static int am65_cpsw_common_start(struct am65_cpsw_common *common)
 	struct am65_cpsw_port *port0 = &common->ports[0];
 	int ret, i;
 
-	if (common->started)
+	if (common->started) {
+		common->started++;
 		return 0;
+	}
 
 	ret = clk_enable(common->fclk);
 	if (ret) {
-- 
2.39.5



