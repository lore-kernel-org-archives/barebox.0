Delivery-date: Tue, 18 Jan 2022 15:06:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8J-005cyM-V9
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 15:06:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9p8I-0006PD-Ia
	for lore@pengutronix.de; Tue, 18 Jan 2022 15:06:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lengB6Phmc1ySU2kaLdAIW9EOpdSzSLqwd5/52G1SR0=; b=TDTuH7tOdY9HZu
	yZvrqN6RhYNnCf2w+z9KvJvv7aZHEuqSxO7wJzSl6b15GkwRJAPqNRYey6/QMPln2LaAN7BhenxQk
	XxZp/xlx8x1aWdBYvC91oHu6elthdrBDrfHjAEFrDIa8gYqXuxm5Z5cxaazd4sWXSsBAVCrAg9jEY
	Q/aCe/lPYAsd66WchqvHQsWo3BwlH/v2hKcINlMLvk2ByMdC3kMLMZJBD0bQADpssEgMgkttYvwQl
	i76JEgxAcRcqYNMWGc+E2Br6DGoIJ4Uwx5nJQYRXMmePQwAxBYl3QP1ABV1NJpf/5qIsRlox4as9G
	Hdoa8z8017AJj9ypoGTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9p71-001lEf-35; Tue, 18 Jan 2022 14:05:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9p6i-001l6x-Fd
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 14:05:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6e-0005oh-FM; Tue, 18 Jan 2022 15:05:04 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <str@pengutronix.de>)
 id 1n9p6d-009kN6-Rk; Tue, 18 Jan 2022 15:05:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 18 Jan 2022 15:04:53 +0100
Message-Id: <20220118140453.1860909-7-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
References: <20220118140453.1860909-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_060508_624002_5FD25DA0 
X-CRM114-Status: GOOD (  15.83  )
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
Subject: [PATCH 6/6] ata: sata_mv: try probing multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In case of an un-recoverable probe error, try the whole sequence again,
starting with the hard-reset of the core.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
No need to look at this patch. It is awesome. Better look at this nice
chocolate:

  ___  ___  ___  ___  ___.---------------.
.'\__\'\__\'\__\'\__\'\__,`   .  ____ ___ \
|\/ __\/ __\/ __\/ __\/ _:\   |`.  \  \___ \
 \\'\__\'\__\'\__\'\__\'\_`.__|""`. \  \___ \
  \\/ __\/ __\/ __\/ __\/ __:                \
   \\'\__\'\__\'\__\ \__\'\_;-----------------`
    \\/   \/   \/   \/   \/ :               hh|
     \|______________________;________________|

 drivers/ata/sata_mv.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index 49205d24d8..05b27f1008 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -47,6 +47,7 @@ static void ata_ioports_init(struct ata_ioports *io,
 #define REG_ATA_BASE			0x2100
 #define REG_SSTATUS(n)			((n) * 0x2000 + 0x2300)
 #define REG_SERROR(n)			((n) * 0x2000 + 0x2304)
+#define REG_SERROR_MASK			0x03fe0000
 #define REG_SCONTROL(n)			((n) * 0x2000 + 0x2308)
 #define REG_SCONTROL__DET		0x0000000f
 #define REG_SCONTROL__DET__INIT		0x00000001
@@ -94,8 +95,10 @@ static int mv_sata_probe(struct device_d *dev)
 	struct resource *iores;
 	void __iomem *base;
 	struct ide_port *ide;
+	u32 try_again = 0;
 	u32 scontrol;
 	int ret, i;
+	u32 tmp;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores)) {
@@ -114,6 +117,7 @@ static int mv_sata_probe(struct device_d *dev)
 	writel(0x7fff0e01, base + REG_WINDOW_CONTROL(0));
 	writel(0, base + REG_WINDOW_BASE(0));
 
+again:
 	/* Clear SError */
 	writel(0x0, base + REG_SERROR(0));
 	/* disable EDMA */
@@ -175,6 +179,32 @@ static int mv_sata_probe(struct device_d *dev)
 	if (ret)
 		free(ide);
 
+	/*
+	 * Under most conditions the above is enough and works as expected.
+	 * With some specific hardware combinations, the setup fails however
+	 * leading to an unusable SATA drive. From the error status bits it
+	 * was not obvious what exactly went wrong.
+	 * The ARMADA-XP datasheet advices to hard-reset the SATA core and
+	 * drive and try again.
+	 * When this happens, just try again multiple times, to give the drive
+	 * some time to reach a stable state. If after 5 (randomly chosen) tries,
+	 * the drive still doesn't work, just give up on it.
+	 */
+	tmp = readl(base + REG_SERROR(0));
+	if (tmp & REG_SERROR_MASK) {
+		try_again++;
+		if (try_again > 5)
+			return -ENODEV;
+		dev_dbg(dev, "PHY layer error. Try again. (serror=0x%08x)\n", tmp);
+		if (ide->port.initialized) {
+			blockdevice_unregister(&ide->port.blk);
+			unregister_device(&ide->port.class_dev);
+		}
+
+		mdelay(100);
+		goto again;
+	}
+
 	return ret;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

