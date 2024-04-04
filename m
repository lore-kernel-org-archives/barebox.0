Delivery-date: Thu, 04 Apr 2024 21:07:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsSQY-00AcW6-0H
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 21:07:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsSQX-00040A-DR
	for lore@pengutronix.de; Thu, 04 Apr 2024 21:07:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mXVApvOyccidpXNcNHoTN07xHaQnc+kZ1T0aciYlzcw=; b=PWeQRVgMC0rmcZVWDEtlZFsbho
	RZICTFL9eISyZdZLnqVEq9Q9pSaNMQT1Urf4BdnH7lMLx7ULlJsbx5q9Rv6t2kQP+2ghLLCALhUV2
	2sChoMzb+JpAe2CUu24iTnocdPMxknVPDX29New9jtq9NRFVQEYKFRmT1ZrUzatM/e4/g+leVgm1x
	VqZf2mIOGwTxB4SYubRtF+v0LT88YlGV2fv31YnwrIsRhw7rQZTAIeYcKyoGhT7rt2ZthRIwnP7UU
	eZAsxT6M+tshl6NLW0Tcy39+uKqi7Zacu5sGKh7gRZqUh9aOdLBZenBgjv+wrp+8Rm9xoLhaXdetx
	71UYttng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSQ3-00000003yR1-1YkQ;
	Thu, 04 Apr 2024 19:06:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsSPz-00000003yPp-2su9
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 19:06:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsSPx-0003D5-UE; Thu, 04 Apr 2024 21:06:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsSPx-00AQVb-HV; Thu, 04 Apr 2024 21:06:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-2L;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:40:01 +0200
Message-Id: <20240404184001.1532897-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_120635_868489_9DB9F625 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] net: usb: smsc95xx: disable HW checksumming in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently enable hardware checksumming, which means the NIC will add
two bytes of checksum after each packet with the computed checksum. We
don't use those two bytes however and will recompute the checksum
anyway.

Because we also don't adjust the size reported to the network stack to
be 2 bytes shorter, we trigger the newly introduced WARN_ON_ONCE when
DEBUG is #define'd that checks this condition, so let's just disable
the checksumming altogether and remove left-over dead code associated
with it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/smsc95xx.c | 41 +++++++++++---------------------------
 1 file changed, 12 insertions(+), 29 deletions(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index 291e3c2f80f7..a90041731a66 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -24,8 +24,6 @@
 #define MAX_SINGLE_PACKET_SIZE		(2048)
 #define LAN95XX_EEPROM_MAGIC		(0x9500)
 #define EEPROM_MAC_OFFSET		(0x01)
-#define DEFAULT_TX_CSUM_ENABLE		(1)
-#define DEFAULT_RX_CSUM_ENABLE		(1)
 #define SMSC95XX_INTERNAL_PHY_ID	(1)
 #define SMSC95XX_TX_OVERHEAD		(8)
 #define SMSC95XX_TX_OVERHEAD_CSUM	(12)
@@ -46,8 +44,6 @@
 
 struct smsc95xx_priv {
 	u32 mac_cr;
-	int use_tx_csum;
-	int use_rx_csum;
 };
 
 static int turbo_mode = 0;
@@ -320,10 +316,9 @@ static void smsc95xx_set_multicast(struct usbnet *dev)
 	smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);
 }
 
-/* Enable or disable Tx & Rx checksum offload engines */
-static int smsc95xx_set_csums(struct usbnet *dev)
+/* Disable Tx & Rx IP checksum offload engines */
+static int smsc95xx_disable_csums(struct usbnet *dev)
 {
-	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 	u32 read_buf;
 	int ret = smsc95xx_read_reg(dev, COE_CR, &read_buf);
 	if (ret < 0) {
@@ -331,15 +326,8 @@ static int smsc95xx_set_csums(struct usbnet *dev)
 		return ret;
 	}
 
-	if (pdata->use_tx_csum)
-		read_buf |= Tx_COE_EN_;
-	else
-		read_buf &= ~Tx_COE_EN_;
-
-	if (pdata->use_rx_csum)
-		read_buf |= Rx_COE_EN_;
-	else
-		read_buf &= ~Rx_COE_EN_;
+	read_buf &= ~Tx_COE_EN_;
+	read_buf &= ~Rx_COE_EN_;
 
 	ret = smsc95xx_write_reg(dev, COE_CR, read_buf);
 	if (ret < 0) {
@@ -670,7 +658,13 @@ static int smsc95xx_reset(struct usbnet *dev)
 		return ret;
 	}
 
-	ret = smsc95xx_set_csums(dev);
+	/*
+	 * barebox network stack doesn't care for hardware checksum offloading,
+	 * so this enabling them doesn't help and indeed introduces breakage:
+	 * The driver will be unaware of the two byte COE trailer and thus packet
+	 * sizes reported will be 2 bytes more than what was actually transmitted.
+	 */
+	ret = smsc95xx_disable_csums(dev);
 	if (ret < 0) {
 		netdev_warn(dev->net, "Failed to set csum offload: %d\n", ret);
 		return ret;
@@ -724,9 +718,6 @@ static int smsc95xx_bind(struct usbnet *dev)
 		return -ENOMEM;
 	}
 
-	pdata->use_tx_csum = DEFAULT_TX_CSUM_ENABLE;
-	pdata->use_rx_csum = DEFAULT_RX_CSUM_ENABLE;
-
 	/* Init all registers */
 	ret = smsc95xx_reset(dev);
 
@@ -810,15 +801,7 @@ static int smsc95xx_rx_fixup(struct usbnet *dev, void *buf, int len)
 
 	return 1;
 }
-#if 0
-static u32 smsc95xx_calc_csum_preamble(struct sk_buff *skb)
-{
-	int len = skb->data - skb->head;
-	u16 high_16 = (u16)(skb->csum_offset + skb->csum_start - len);
-	u16 low_16 = (u16)(skb->csum_start - len);
-	return (high_16 << 16) | low_16;
-}
-#endif
+
 static int smsc95xx_tx_fixup(struct usbnet *dev,
                                 void *buf, int len,
                                 void *nbuf, int *nlen)
-- 
2.39.2



