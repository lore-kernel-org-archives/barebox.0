Delivery-date: Wed, 24 Apr 2024 09:09:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWl0-00ERAZ-2s
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWky-0006mp-Mo
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=44FrFMbuiYoz6yNWrkovUxMFLEKnIvhNfuwrWMPvy7E=; b=aOBf7Cgyr6S9rpiYdzstSizUMG
	bKHrf/rljtvtWXi9w5ZPSkAI3LVrpbzSYIpMxq3hbbd4a0EoDPBiksuG76QFzkuz5y61sufcN2DTU
	tBTb0Sd5i85DJQSxvA7+QGDWEMFmc5EJxgEYbtLD+1SQQzt7dp69OPE50IPfFwfLZx8neLFqgpnU9
	+MowlQxJlnpG/1fR2ziESwXSunV4G+dCTXQeMclB4ETxxL50UAopJ5Rp48DK5xtCOfe1ua5Su9SmQ
	BRmQ1uTNRcmwEq4J4xl+tV15eobrhOw6YKjE4J5fACVFNdIHvBXWSOr7Nl/FFQA1/ps0IciJOkd/b
	KcKg5cWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWkO-000000032FP-39KZ;
	Wed, 24 Apr 2024 07:08:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031tA-2qoo
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005d0-Uq; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24k-HW; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-2M;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:52 +0200
Message-Id: <20240424064058.3608016-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_935322_83C62F07 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 17/23] net: usb: smsc95xx: use DMA memory for usb_control_msg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Iti's not safe to call usb_control_msg() with data pointing to the
stack. For some reason, this didn't blow up in our faces yet, but let's
do it properly now: Use a bounce buffer allocated with dma_alloc.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/smsc95xx.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index b6f81cfab825..8590f4dd86b2 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -47,23 +47,25 @@ struct smsc95xx_priv {
 	u32 mac_cr;
 	int use_tx_csum;
 	int use_rx_csum;
+	__le32 *iobuf;
 };
 
 static int turbo_mode = 0;
 
 static int smsc95xx_read_reg(struct usbnet *dev, u32 index, u32 *data)
 {
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 	int ret;
 
 	ret = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
 		USB_VENDOR_REQUEST_READ_REGISTER,
 		USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
-		00, index, data, 4, USB_CTRL_GET_TIMEOUT);
+		00, index, pdata->iobuf, 4, USB_CTRL_GET_TIMEOUT);
 
 	if (ret < 0)
 		netdev_warn(dev->net, "Failed to read register index 0x%08x\n", index);
-
-	le32_to_cpus(data);
+	else
+		*data = le32_to_cpup(pdata->iobuf);
 
 	debug("%s: 0x%08x 0x%08x\n", __func__, index, *data);
 
@@ -72,14 +74,15 @@ static int smsc95xx_read_reg(struct usbnet *dev, u32 index, u32 *data)
 
 static int smsc95xx_write_reg(struct usbnet *dev, u32 index, u32 data)
 {
+	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 	int ret;
 
-	cpu_to_le32s(&data);
+	*pdata->iobuf = cpu_to_le32(data);
 
 	ret = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
 		USB_VENDOR_REQUEST_WRITE_REGISTER,
 		USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
-		00, index, &data, 4, USB_CTRL_SET_TIMEOUT);
+		00, index, pdata->iobuf, 4, USB_CTRL_SET_TIMEOUT);
 
 	if (ret < 0)
 		netdev_warn(dev->net, "Failed to write register index 0x%08x\n", index);
@@ -726,6 +729,8 @@ static int smsc95xx_bind(struct usbnet *dev)
 	pdata->use_tx_csum = DEFAULT_TX_CSUM_ENABLE;
 	pdata->use_rx_csum = DEFAULT_RX_CSUM_ENABLE;
 
+	pdata->iobuf = dma_alloc(4);
+
 	/* Init all registers */
 	ret = smsc95xx_reset(dev);
 
-- 
2.39.2



