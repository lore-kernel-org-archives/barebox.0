Delivery-date: Wed, 13 Mar 2024 12:07:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSa-004IPm-2e
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:07:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMSa-0002o5-2w
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N5gyPmN/ebPJ3H0MeiVWL4tqo6TX96CwmEnx1DYUXt0=; b=0UlKUVgDEt++VUUxHrxM1bOFzy
	zyWTZ1IBHumn5P+/mzvKzRuEiV646VgAtaf3tPuQGX40BFbQfO4AwogELdVhmFnwJ0BElJV8TTHUF
	Qx6Og1zZSEXegvO0OTj80XbYkLigYYroB/g/sc/jh1bRjmVdVcttPWrK3s42USk2H/3QdKTCl9McY
	rR2g/Tthd74fJcHCS0AYBvLr+6hgqBUQTl34B7aRlhUourP33mu1gyZjcSPTOEUHR2Sg0hbfhVcwa
	HhPZqGnxEmX9B4lNmmUjkjWmgwbvOysJyFKd4YPUXDtx9zWWpT/FT6UpOkirDS5mAJostzyUWQtXU
	3Zudl6aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMS3-00000009pLx-2phL;
	Wed, 13 Mar 2024 11:07:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMRv-00000009pFg-0cwU
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:07:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-0001sm-VJ; Wed, 13 Mar 2024 12:07:05 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRt-00665u-HT; Wed, 13 Mar 2024 12:07:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMRs-004dIp-33;
	Wed, 13 Mar 2024 12:07:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 12:07:01 +0100
Message-Id: <20240313110704.1095554-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_040707_376803_76725433 
X-CRM114-Status: GOOD (  14.15  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/7] net: gianfar: replace global NetRxPackets with per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

NetRxPackets is a remnant of times, where a board had at most one
Ethernet controller. This is outdated and we should drop NetRxPackets.

Switch over the driver to allocate the receive buffers needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/gianfar.c | 14 +++++++-------
 drivers/net/gianfar.h |  6 ++++++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 1a07059db4f3..21ffe822e1cc 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -21,11 +21,6 @@
 #include <linux/err.h>
 #include "gianfar.h"
 
-/* 2 seems to be the minimum number of TX descriptors to make it work. */
-#define TX_BUF_CNT 	2
-#define RX_BUF_CNT 	PKTBUFSRX
-#define BUF_ALIGN	8
-
 /*
  * Initialize required registers to appropriate values, zeroing
  * those we don't care about (unless zero is bad, in which case,
@@ -199,7 +194,7 @@ static int gfar_open(struct eth_device *edev)
 	for (ix = 0; ix < RX_BUF_CNT; ix++) {
 		out_be16(&priv->rxbd[ix].status, RXBD_EMPTY);
 		out_be16(&priv->rxbd[ix].length, 0);
-		out_be32(&priv->rxbd[ix].bufPtr, (uint) NetRxPackets[ix]);
+		out_be32(&priv->rxbd[ix].bufPtr, (uint) priv->rx_buffer[ix]);
 	}
 	out_be16(&priv->rxbd[RX_BUF_CNT - 1].status, RXBD_EMPTY | RXBD_WRAP);
 
@@ -407,7 +402,7 @@ static int gfar_recv(struct eth_device *edev)
 	/* Send the packet up if there were no errors */
 	status = in_be16(&priv->rxbd[priv->rxidx].status);
 	if (!(status & RXBD_STATS))
-		net_receive(edev, NetRxPackets[priv->rxidx], length - 4);
+		net_receive(edev, priv->rx_buffer[priv->rxidx], length - 4);
 	else
 		dev_err(dev, "Got error %x\n", status & RXBD_STATS);
 
@@ -471,9 +466,14 @@ static int gfar_probe(struct device *dev)
 	size_t size;
 	char devname[16];
 	char *p;
+	int ret;
 
 	priv = xzalloc(sizeof(struct gfar_private));
 
+	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
+	if (ret)
+		return ret;
+
 	edev = &priv->edev;
 
 	priv->mdiobus_tbi = gfar_info->mdiobus_tbi;
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index cea41218a71c..8a60c7f38eca 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -265,6 +265,11 @@ struct gfar_phy {
 	struct mii_bus miibus;
 };
 
+/* 2 seems to be the minimum number of TX descriptors to make it work. */
+#define TX_BUF_CNT 	2
+#define RX_BUF_CNT 	PKTBUFSRX
+#define BUF_ALIGN	8
+
 struct gfar_private {
 	struct eth_device edev;
 	void __iomem *regs;
@@ -282,5 +287,6 @@ struct gfar_private {
 	uint link;
 	uint duplexity;
 	uint speed;
+	void *rx_buffer[PKTBUFSRX];
 };
 #endif /* __GIANFAR_H */
-- 
2.39.2



