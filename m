Delivery-date: Tue, 08 Nov 2022 07:12:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq8-0018Ra-0W
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 07:12:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq6-0000Aa-Sg
	for lore@pengutronix.de; Tue, 08 Nov 2022 07:12:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yp8CZgc5IEKBWIKj/uYOyDpZRU2SfIBuE7DBEKloVgk=; b=TKqhuUbhL6c1FNKD5UkkNtA2qM
	JjTzh4uRshsoopsThpNnmkXFYIRL03y39mVoR6BIErKyOEKhR3AWcAjo/1YsJoaK76DK8rVOZ6GVE
	xAc/voKbz7wymfGGtd3RZkxr+BprukmJCtD5z44EOZBE1XpNDSztY4x8t39Mv4tXBiB4QDa/e2M1S
	2VzMnuTGOeJ+Y5WjmjOMb596PsurPLM4zEdwHy23rybK9Wpn3yrZTA3Wqqx9FhSoc7xAm55BRxEbA
	JmjQjRuND9Yy2eEoCQAZ34KwxHjVOvGcTUEQcGWCRFwlgkiXWDi/nXqPIfa0NqDIqJB6YhlIfVxhO
	gfBWGevA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHoi-0035IW-Qv; Tue, 08 Nov 2022 06:10:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHoV-0035E9-Ha
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 06:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoU-0007ta-Az; Tue, 08 Nov 2022 07:10:22 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoS-002zpl-Ox; Tue, 08 Nov 2022 07:10:21 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoS-00HUUl-7A; Tue, 08 Nov 2022 07:10:20 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  8 Nov 2022 07:10:06 +0100
Message-Id: <20221108061009.4168735-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221108061009.4168735-1-o.rempel@pengutronix.de>
References: <20221108061009.4168735-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_221023_598981_F6A66CA0 
X-CRM114-Status: GOOD (  14.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/8] drivers: net: fec_imx: add promiscuous mode configuration support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add promiscuous mode configuration support to allow using multiple MAC address
on same FEC interface.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/fec_imx.c | 24 +++++++++++++++++++++++-
 drivers/net/fec_imx.h |  1 +
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 673555a48a..da42a479d9 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -25,6 +25,22 @@
 
 #include "fec_imx.h"
 
+static int fec_set_promisc(struct eth_device *edev, bool enable)
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
+	edev->set_promisc = fec_set_promisc;
 	edev->parent = dev;
 
 	dma_set_mask(dev, DMA_BIT_MASK(32));
@@ -834,6 +854,8 @@ static int fec_probe(struct device_d *dev)
 	if (ret)
 		goto free_gpio;
 
+	fec_set_promisc(edev, false);
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



