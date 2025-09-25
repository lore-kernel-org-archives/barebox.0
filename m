Delivery-date: Thu, 25 Sep 2025 14:26:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1l3b-000wTt-2L
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:26:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1l3b-0006IB-6w
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:26:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ravrDyTAW4ElTJCiUw1eBonIB1tvq+ol9c6gxiN58SE=; b=FXrES4v2yS5nwaC6m1XcQfOT5u
	mVETyzar0vLJVArANgllY0zdLYF8g0fdsGruzxIX4yLxvdV2j+5LnINQNdQ29bjFoR8vUqadZy3wV
	qRTCVqX0WOMUYO7fpqBzCupm7T8zNo9TI1OkPvcQ6+hfJYYNFoXm0Ltjr1NB8xSaLBJBcspBVZec7
	oNFM5KvapOa5PAbP7p/BgLKY2F8tzbxsxi7jNjGC7UMNHR2EerDlC/+sUuwUT9o/coUNgpjDsTGrd
	gYFaPaPJqgPsv/6haavK5ITPz7b4aPyqNJQABMpfGJ8li/I7yMzi9rx+AYi8PJjpUR1F0cXPM8DR1
	OLAKyYIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1l33-00000008xD1-1pSi;
	Thu, 25 Sep 2025 12:26:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1l31-00000008xAO-2yoE
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 12:26:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v1l2x-00069z-Rr; Thu, 25 Sep 2025 14:26:03 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 25 Sep 2025 14:26:03 +0200
Message-ID: <20250925122603.3345276-1-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_052607_742957_2B3316B4 
X-CRM114-Status: UNSURE (   9.43  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX6: configure AIPS registers only if trusted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Bail out of AIPS configuration if OP-TEE has cleared the MTW
("master trusted for write access") bit for the ARM core master
to lock down AIPS configuration.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index ed6cde801ec7..0cf2c17d6b90 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -31,8 +31,16 @@
 #define MX6_OCOTP_CFG0			0x410
 #define MX6_OCOTP_CFG1			0x420
 
+#define BM_MPR_MPROT1_MTW		(0x1 << 25)
+
 static void imx6_configure_aips(void __iomem *aips)
 {
+	u32 mpr = readl(aips);
+
+	/* Bail if CPU ist not trusted for write accesses. */
+	if (!(mpr & BM_MPR_MPROT1_MTW))
+		return;
+
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
 	 * not forced to user-mode.
-- 
2.47.3



