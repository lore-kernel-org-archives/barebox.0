Delivery-date: Tue, 18 Jan 2022 15:06:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8A-005cwG-Je
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p88-0006Ll-Uu
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfZDA1OJTaQpX/xntTlY6kDi4QCCpBhwKzUNktOgKgo=; b=3hvDTd0rDKlkfD
	K/I0Wq+ql3OKawUJVjJtpIkfTI2YNEmoIE7mlzCPXJ0LIziqpn8FW8ndxLYKR+jd99ZkRx/wCOhE9
	9xS75lckoQKP1Xhr4h/lMmcfLZwURuWShYtTsaOhldrc+jLZ4OlGDO3NSGIFuALh4ysgYFz3cfBls
	mrTuBnUWz0xRDBDFeoAjN26hhI7kTEKiAln4RheZAzEr+KfdhSUZIDXalped/9/zyGcwkYt2oFMLC
	Cs2/L3sT2o5SObrLvkphSIjQsF31th+ifVbxNlhbsGzpjpnAriO9PvDI93pckTdGrsjiEmfwqux9m
	SU7hNDiEK7W9Lf0JEflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p6x-001lD9-NK; Tue, 18 Jan 2022 14:05:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6y-Dw
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005oe-Fz; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kLy-QV; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:50 +0100
Message-Id: <20220118140453.1860909-4-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_529005_BE944F8C 
X-CRM114-Status: UNSURE (   9.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] ata: sata_mv: handle the phy errata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Copied from Linux v5.15

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ata/sata_mv.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index c94ad2ca36..b8d21525a7 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -52,6 +52,40 @@ static void ata_ioports_init(struct ata_ioports *io,
 #define REG_SCONTROL__IPM__PARTIAL	0x00000100
 #define REG_SCONTROL__IPM__SLUMBER	0x00000200
 
+#define PHY_MODE3			0x310
+#define	PHY_MODE4			0x314	/* requires read-after-write */
+#define PHY_MODE9_GEN2			0x398
+#define	PHY_MODE9_GEN1			0x39c
+
+static void mv_soc_65n_phy_errata(void __iomem *base)
+{
+	u32 reg;
+
+	reg = readl(base + PHY_MODE3);
+	reg &= ~(0x3 << 27);	/* SELMUPF (bits 28:27) to 1 */
+	reg |= (0x1 << 27);
+	reg &= ~(0x3 << 29);	/* SELMUPI (bits 30:29) to 1 */
+	reg |= (0x1 << 29);
+	writel(reg, base + PHY_MODE3);
+
+	reg = readl(base + PHY_MODE4);
+	reg &= ~0x1;	/* SATU_OD8 (bit 0) to 0, reserved bit 16 must be set */
+	reg |= (0x1 << 16);
+	writel(reg, base + PHY_MODE4);
+
+	reg = readl(base + PHY_MODE9_GEN2);
+	reg &= ~0xf;	/* TXAMP[3:0] (bits 3:0) to 8 */
+	reg |= 0x8;
+	reg &= ~(0x1 << 14);	/* TXAMP[4] (bit 14) to 0 */
+	writel(reg, base + PHY_MODE9_GEN2);
+
+	reg = readl(base + PHY_MODE9_GEN1);
+	reg &= ~0xf;	/* TXAMP[3:0] (bits 3:0) to 8 */
+	reg |= 0x8;
+	reg &= ~(0x1 << 14);	/* TXAMP[4] (bit 14) to 0 */
+	writel(reg, base + PHY_MODE9_GEN1);
+}
+
 static int mv_sata_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -90,6 +124,8 @@ static int mv_sata_probe(struct device_d *dev)
 		return ret;
 	}
 
+	mv_soc_65n_phy_errata(base);
+
 	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
 	udelay(25);
 	writel(0x0, base + REG_EDMA_COMMAND(0));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

