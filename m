Delivery-date: Thu, 03 Nov 2022 14:15:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4W-00Defo-K0
	for lore@lore.pengutronix.de; Thu, 03 Nov 2022 14:15:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4V-0004Nx-Ck
	for lore@pengutronix.de; Thu, 03 Nov 2022 14:15:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=axN4l018DZeYu1SPRLG7Wpr5LeO9SX4S6HWtAPfg6cM=; b=OrZUZhYEKJdSOU1oc/mLIgLjHi
	g+rCdUjWbrjELute5mDc94D+uvzuXIoA6QgvJT9W537FxRqbWEfLHhpHv9pncBGkpiyt/UA+6XNff
	VaoLRTMmTfdvdItceXVQZ5YyP8j2hu2sopz0teQqHfu0kktbCtQzuFiWM2VkIaz81Rl111ep+PwPN
	G6ht2gYOx+JVJc8y/7497qilG/Ze5euu1HaEXg46S1DKoOGxomtU+H/maCe/7jW1IfDkZWzIJ6iBP
	ZL34WVELAkelJR17UFURmS7Jq27+A7gWPl+MSwtRwqTQaYxaD1w34HnZliBO8nG8d/ELFwimpFFGu
	ukv1Rw/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2x-00HSe9-UA; Thu, 03 Nov 2022 13:14:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2i-00HSYT-5C
	for barebox@lists.infradead.org; Thu, 03 Nov 2022 13:14:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2c-0003o9-Oa; Thu, 03 Nov 2022 14:13:54 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2c-00250f-V3; Thu, 03 Nov 2022 14:13:54 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2b-008dpk-Aw; Thu, 03 Nov 2022 14:13:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Nov 2022 14:13:48 +0100
Message-Id: <20221103131351.2059683-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221103131351.2059683-1-o.rempel@pengutronix.de>
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_061400_236860_5DD49079 
X-CRM114-Status: GOOD (  14.52  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] drivers: net: fec_imx: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add promiscuous mode configuration support to allow using multiple MAC address
on same FEC interfaces.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 24 +++++++++++++++++++++++-
 drivers/net/fec_imx.h |  1 +
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 673555a48a..a5ff764e28 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -25,6 +25,22 @@
 
 #include "fec_imx.h"
 
+static int fec_set_promiscuous_mode(struct eth_device *edev, bool enable)
+{
+	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+	u32 rcntl;
+
+	rcntl = readl(fec->regs + FEC_R_CNTRL);
+
+	if (enable)
+		rcntl |= FEC_R_CNTRL_PROMISC;
+	else
+		rcntl &= ~FEC_R_CNTRL_PROMISC;
+
+	writel(rcntl, fec->regs + FEC_R_CNTRL);
+
+	return 0;
+}
 
 /*
  * MII-interface related functions
@@ -257,10 +273,13 @@ static int fec_init(struct eth_device *dev)
 	 */
 	writel(0x00000000, fec->regs + FEC_IMASK);
 
+	rcntl = readl(fec->regs + FEC_R_CNTRL);
+	rcntl &= FEC_R_CNTRL_PROMISC;
+
 	/*
 	 * Set FEC-Lite receive control register(R_CNTRL):
 	 */
-	rcntl = FEC_R_CNTRL_MAX_FL(1518);
+	rcntl |= FEC_R_CNTRL_MAX_FL(1518);
 
 	rcntl |= FEC_R_CNTRL_MII_MODE;
 	/*
@@ -768,6 +787,7 @@ static int fec_probe(struct device_d *dev)
 	edev->halt = fec_halt;
 	edev->get_ethaddr = fec_get_hwaddr;
 	edev->set_ethaddr = fec_set_hwaddr;
+	edev->set_promiscuous_mode = fec_set_promiscuous_mode;
 	edev->parent = dev;
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
@@ -834,6 +854,8 @@ static int fec_probe(struct device_d *dev)
 	if (ret)
 		goto free_gpio;
 
+	fec_set_promiscuous_mode(edev, false);
+
 	/*
 	 * reserve memory for both buffer descriptor chains at once
 	 * Datasheet forces the startaddress of each chain is 16 byte aligned
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 316eefe48f..9bb1c64b55 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -58,6 +58,7 @@
 #define FEC_R_CNTRL_RMII_10T		(1 << 9) /* i.MX28 specific */
 #define FEC_R_CNTRL_RMII_MODE		(1 << 8) /* i.MX28 specific */
 #define FEC_R_CNTRL_FCE			(1 << 5)
+#define FEC_R_CNTRL_PROMISC		(1 << 3)
 #define FEC_R_CNTRL_MII_MODE		(1 << 2)
 
 #define FEC_IEVENT_HBERR                0x80000000 /* Note: Not on i.MX28 */
-- 
2.30.2



