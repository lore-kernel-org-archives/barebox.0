Delivery-date: Tue, 18 Jan 2022 15:06:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8C-005cwy-Id
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8B-0006Mx-Ey
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iH14jdvOVVYRn4AIR2eWJ7nAmxOPk5UU9Hhe+yMPX38=; b=if2Cvo9zX2RtlU
	FPcHaF35LLpaWxqHH14qCJ1cm7kqBkdFV80QCts6KIn6QmuWwcYE0ntvPXadkrpJuop+S5d2/0IYX
	5zbXyJqQbdy3ta4Klf4uzNAKpJADAU17mJwPEefJtL1F9RCEHGvYt5u/W+65dMY38HZBrGp+G9HGk
	Jzxla8Ap58sMtGMLnXT0/bQXS4uS3SVDO+aHRRz/dhMZNl5MNAXofci7YA6LI1K2msf395X0S7BMx
	WMttz9Rx3xx9KllhDobKhHVuNIe5H6KfHV9WYqnx5V5snI/9VYFkfMPAa9Qb0Jxsri1ch1dvZbMUc
	Ti6C9Kw7IET/DcFJDs0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p6u-001lBs-Rk; Tue, 18 Jan 2022 14:05:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6w-Cu
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005of-EU; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kMH-Qt; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:51 +0100
Message-Id: <20220118140453.1860909-5-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_485856_2CC6C526 
X-CRM114-Status: UNSURE (   9.15  )
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
Subject: [PATCH 4/6] ata: sata_mv: enable Generation 2 speed support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ARMADA-XP core supports the Gen2 speed.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ata/sata_mv.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index b8d21525a7..dd326428f4 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -40,6 +40,9 @@ static void ata_ioports_init(struct ata_ioports *io,
 #define EDMA_EN				(1 << 0)	/* enable EDMA */
 #define EDMA_DS				(1 << 1)	/* disable EDMA; self-negated */
 #define REG_EDMA_COMMAND__EATARST	0x00000004
+#define REG_EDMA_IORDY_TMOUT(n)		((n) * 0x2000 + 0x2034)
+#define REG_SATA_IFCFG(n)		((n) * 0x2000 + 0x2050)
+#define REG_SATA_IFCFG_GEN2EN		(1 << 7)
 
 #define REG_ATA_BASE			0x2100
 #define REG_SSTATUS(n)			((n) * 0x2000 + 0x2300)
@@ -124,6 +127,13 @@ static int mv_sata_probe(struct device_d *dev)
 		return ret;
 	}
 
+	/* increase IORdy signal timeout */
+	writel(0x800, base + REG_EDMA_IORDY_TMOUT(0));
+	/* set GEN2i Speed */
+	tmp = readl(base + REG_SATA_IFCFG(0));
+	tmp |= REG_SATA_IFCFG_GEN2EN;
+	writel(tmp, base + REG_SATA_IFCFG(0));
+
 	mv_soc_65n_phy_errata(base);
 
 	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

