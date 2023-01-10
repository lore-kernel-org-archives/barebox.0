Delivery-date: Tue, 10 Jan 2023 16:38:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGi6-007tqs-8q
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:38:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGi4-0007fj-Gl
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:38:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2qr/BYbRjNSy6Eq1Ph2NN47UTB0mMYyX7tktcvxwpZ4=; b=3bP+6j8nBbEZj1ZFCVyd3e4+FK
	AUEvgG22MrEXqEhSpQQeWMU0sVX6o0vQMN3a38Xo0SvQ8sTqLyv/1QxvtguBgpbjFmBRZS4PWqZcG
	UNQFeTPEZ+OO48RHk3JmcTuZJEr1pOaHXeH5XkG/YghhtI9a89HDHw1a1w5dZWwQ/ybwZejWHiP1p
	xkSX5FhbWahpczaQeGAoPKeQf3bHddP1js0K3N6uT2nPyt/oGqDt/DZS5//CZJTpRGjK0if2PoxMX
	q+w5O/2FlAiqQbl3ap2OrXPRfKOoQWrchQdARMY9O5vAVENgTUTdMND6Up0Wp4eCZdV2d9aRiu71s
	jjwp4jpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGgs-007czU-Mk; Tue, 10 Jan 2023 15:37:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGgm-007cyO-Sh
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:37:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFGgl-0007Zw-FG; Tue, 10 Jan 2023 16:37:23 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFGgk-0056lo-Ru; Tue, 10 Jan 2023 16:37:22 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFGgk-00GwJr-7B; Tue, 10 Jan 2023 16:37:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 16:37:19 +0100
Message-Id: <20230110153719.4037355-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_073724_942431_EC7C303C 
X-CRM114-Status: GOOD (  15.32  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: designware: eqos: implement set_promisc callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A STM32MP1 platform using a KSZ switch with barebox' DSA
framework now throws a warning:

  WARNING: ksz9477-spi ksz9563@00: Failed to set promisc mode.
  Using different eth addresses may not work. error 95

DSA worked correctly though and the switch ports had their own
MAC addresses different from the CPU's mac address. Frame
ingress and egress indeed occurs with the switch port's MAC address.

Nevertheless, it's a good idea to set the promiscuous bit, so do this
now, if only to silence the warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Oleksij, do you have an idea why this worked before?
---
 drivers/net/designware_eqos.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index c255d74eff5a..ee5a10a007e9 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -26,7 +26,8 @@
 struct eqos_mac_regs {
 	u32 config;				/* 0x000 */
 	u32 ext_config;				/* 0x004 */
-	u32 unused_004[(0x070 - 0x008) / 4];	/* 0x008 */
+	u32 packet_filter;			/* 0x008 */
+	u32 unused_004[(0x070 - 0x00C) / 4];	/* 0x00C */
 	u32 q0_tx_flow_ctrl;			/* 0x070 */
 	u32 unused_070[(0x090 - 0x074) / 4];	/* 0x074 */
 	u32 rx_flow_ctrl;			/* 0x090 */
@@ -62,6 +63,9 @@ struct eqos_mac_regs {
 #define EQOS_MAC_CONFIGURATION_TE			BIT(1)
 #define EQOS_MAC_CONFIGURATION_RE			BIT(0)
 
+#define EQOS_MAC_PACKET_FILTER_PR			BIT(0)	/* Promiscuous mode */
+#define EQOS_MAC_PACKET_FILTER_PCF			BIT(7)	/* Pass Control Frames */
+
 #define EQOS_MAC_Q0_TX_FLOW_CTRL_PT_SHIFT		16
 #define EQOS_MAC_Q0_TX_FLOW_CTRL_PT_MASK		0xffff
 #define EQOS_MAC_Q0_TX_FLOW_CTRL_TFE			BIT(1)
@@ -357,6 +361,21 @@ int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
 	return 0;
 }
 
+static int eqos_set_promisc(struct eth_device *edev, bool enable)
+{
+	struct eqos *eqos = edev->priv;
+	u32 mask;
+
+	mask = EQOS_MAC_PACKET_FILTER_PR | EQOS_MAC_PACKET_FILTER_PCF;
+
+	if (enable)
+		setbits_le32(&eqos->mac_regs->packet_filter, mask);
+	else
+		clrbits_le32(&eqos->mac_regs->packet_filter, mask);
+
+	return 0;
+}
+
 /* Get PHY out of power saving mode.  If this is needed elsewhere then
  * consider making it part of phy-core and adding a resume method to
  * the phy device ops.  */
@@ -856,6 +875,7 @@ int eqos_probe(struct device *dev, const struct eqos_ops *ops, void *priv)
 	edev->halt = eqos_stop;
 	edev->get_ethaddr = ops->get_ethaddr;
 	edev->set_ethaddr = ops->set_ethaddr;
+	edev->set_promisc = eqos_set_promisc;
 
 	miibus = &eqos->miibus;
 	miibus->parent = edev->parent;
-- 
2.30.2



