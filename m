Delivery-date: Tue, 18 Jan 2022 15:06:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8L-005cym-I3
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8K-0006Pn-4o
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moIKHrh68S3VKmjdVcACXZIHSEop4+rSZsmHJgZPOEc=; b=q0EA64cA4coYz+
	9FWFw+wVnV8AqhZTk0N/uIz7MaKpad/MnCQfBN0olvzwRGSl2+GBYiouiZtDhZBrfTVNx+O+Onu16
	2RKYCiU1MV6rEPcPSorLAES8z/o45gtOstrYvD2mndEe3+vQXQ5gpXF7QiSFOiMDPzBR4xkTvh5wO
	Xz6yvaj039Fd+cO1GZvaif5Ic8glAL6kt1D/1An+a1bqK4b4bTNDjXU90P91LxsX5Tz3c865bu8CM
	sQ82PlsnRAGWx6oVbdgkOGrW8lLf3JX0t1fRhUmNWyHj4y5Srm5Qcp6VWIbSggE2euDOnkltZS8ZH
	z+052k50hX3HGinmqtkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p79-001lMS-BN; Tue, 18 Jan 2022 14:05:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6v-E8
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005od-D4; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kLq-Q2; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:49 +0100
Message-Id: <20220118140453.1860909-3-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_557541_7464DF8F 
X-CRM114-Status: GOOD (  10.94  )
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
Subject: [PATCH 2/6] ata: sata_mv: clear SERROR and en/disable EDMA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SControl registers shouldn't be accessed when EDMA is enabled.
Also clear SError before any accesses. This register will show if
anything went wrong with the phy accesses.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/ata/sata_mv.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index 3f77e8f2e8..c94ad2ca36 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -37,10 +37,13 @@ static void ata_ioports_init(struct ata_ioports *io,
 #define REG_WINDOW_BASE(n)		((n) * 0x10 + 0x34)
 
 #define REG_EDMA_COMMAND(n)		((n) * 0x2000 + 0x2028)
+#define EDMA_EN				(1 << 0)	/* enable EDMA */
+#define EDMA_DS				(1 << 1)	/* disable EDMA; self-negated */
 #define REG_EDMA_COMMAND__EATARST	0x00000004
 
 #define REG_ATA_BASE			0x2100
 #define REG_SSTATUS(n)			((n) * 0x2000 + 0x2300)
+#define REG_SERROR(n)			((n) * 0x2000 + 0x2304)
 #define REG_SCONTROL(n)			((n) * 0x2000 + 0x2308)
 #define REG_SCONTROL__DET		0x0000000f
 #define REG_SCONTROL__DET__INIT		0x00000001
@@ -74,6 +77,19 @@ static int mv_sata_probe(struct device_d *dev)
 	writel(0x7fff0e01, base + REG_WINDOW_CONTROL(0));
 	writel(0, base + REG_WINDOW_BASE(0));
 
+	/* Clear SError */
+	writel(0x0, base + REG_SERROR(0));
+	/* disable EDMA */
+	writel(EDMA_DS, base + REG_EDMA_COMMAND(0));
+	/* Wait for the chip to confirm eDMA is off. */
+	ret = wait_on_timeout(10 * MSECOND,
+				(readl(base + REG_EDMA_COMMAND(0)) & EDMA_EN) == 0);
+	if (ret) {
+		dev_err(dev, "Failed to wait for eDMA off (sstatus=0x%08x)\n",
+			readl(base + REG_SSTATUS(0)));
+		return ret;
+	}
+
 	writel(REG_EDMA_COMMAND__EATARST, base + REG_EDMA_COMMAND(0));
 	udelay(25);
 	writel(0x0, base + REG_EDMA_COMMAND(0));
@@ -104,6 +120,9 @@ static int mv_sata_probe(struct device_d *dev)
 
 	dev->priv = ide;
 
+	/* enable EDMA */
+	writel(EDMA_EN, base + REG_EDMA_COMMAND(0));
+
 	ret = ide_port_register(ide);
 	if (ret)
 		free(ide);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

