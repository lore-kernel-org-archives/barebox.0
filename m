Delivery-date: Wed, 03 Jun 2026 15:34:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkJ-001wSW-0c
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 15:34:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkI-0004Am-Iy
	for lore@pengutronix.de; Wed, 03 Jun 2026 15:34:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2bEN1BzpjToZozNiZJxXzMqr8Wv5aA8R/hOgkqGYvxU=; b=YZCX/0Q3krLg1qm0xtgD2lU4F6
	QuGwzAK/M4iGae8J6jAC+YGNRxzvL7TSwnW79snfQajtwcd/g2yaULF/Ue8Xbf1AUzwdDH4Sa8mFT
	wKh/9j80khK2BJvh47CTnpagmNIud05A06DfblGi+dy+aH2QXU4kNw1WfsVMXXNZLHMtOzvXIPLE6
	vTNd44Py5w945C9rMqtsT3KJEye4O0Tw/fwogcVHRGylkG8daEXdcFBvz6zcNOieNb21EwPOR/3X7
	c4X2AGw4D+sH9uXFl84X+F2j1+GeMyM8qO7nfD3+2f/IW+H1ijsFwpIyEmM+jorXoLVu7GsqZ1oAw
	WwFVocxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljA-0000000FBFW-2wxf;
	Wed, 03 Jun 2026 13:33:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj7-0000000FBDc-30jT
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-0003nA-DZ; Wed, 03 Jun 2026 15:33:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-000v71-15;
	Wed, 03 Jun 2026 15:33:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-00000009uCD-120b;
	Wed, 03 Jun 2026 15:33:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 03 Jun 2026 15:33:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-feature-snvs-imx6ul-v1-2-6305f63bd3fa@pengutronix.de>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063345_776670_2CAB5C15 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: i.MX8M/i.MX7: initialize SNVS glitch detection
 for all families
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The value and register is identical across i.MX8M and i.MX7 so move the
block to the shared snvs_init() function.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/snvs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/snvs.c b/arch/arm/mach-imx/snvs.c
index 80df62ad96..414e927b05 100644
--- a/arch/arm/mach-imx/snvs.c
+++ b/arch/arm/mach-imx/snvs.c
@@ -22,6 +22,11 @@ static void snvs_init(void __iomem *snvs)
 	val = readl(snvs + SNVS_HPCOMR);
 	val |= SNVS_HPCOMR_NPSWA_EN;
 	writel(val, snvs + SNVS_HPCOMR);
+
+	/* Initialize glitch detect */
+	writel(SNVS_LPPGDR_INIT, snvs + SNVS_LPLVDR);
+	/* Clear interrupt status */
+	writel(0xffffffff, snvs + SNVS_LPSR);
 }
 
 void imx7_snvs_init(void)
@@ -35,10 +40,5 @@ void imx8m_setup_snvs(void)
 {
 	void __iomem *snvs = IOMEM(MX8M_SNVS_BASE_ADDR);
 
-        /* Initialize glitch detect */
-        writel(SNVS_LPPGDR_INIT, snvs + SNVS_LPLVDR);
-        /* Clear interrupt status */
-        writel(0xffffffff, snvs + SNVS_LPSR);
-
-        snvs_init(snvs);
+	snvs_init(snvs);
 }

-- 
2.47.3



