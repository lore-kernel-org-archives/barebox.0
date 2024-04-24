Delivery-date: Wed, 24 Apr 2024 09:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkl-00ER6Y-0O
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWke-0006Pb-ON
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aP6L/jsedAbSg+K4j965MqqqZW2qdwBQITY/XGSVNcQ=; b=NBx2+f8RbhhG+KRuFdwypBPghn
	oi02GOh5hSBSp90zr54FHu3nOEddJ1gTdfba2AZzcpzVoB0bXH3EGRGJxm+37umgC7xXG7UiHoitB
	iVx0g3WhlRmJUVaOirihlF1Lu3U2Q8u/yEuIJo0k7Kl0zb1+X8YaKC4+Wlm5UJPV5id3y1RsFjFxY
	qoODkLRWu9K/eyRCE5WUwFXg5aasOObISRed33JeHZbAmbzuDQmO1d92QGHpo0GHmT7IVl7jUNUXY
	c5+2qb21/blIrHc0vnRtFwlMQVCohg0yhmP8Dvb6TWT6fXgje9ByQsHi1ZuOWZhLfdk2tSa/yjaVi
	GjosyBQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk4-0000000320O-2LKa;
	Wed, 24 Apr 2024 07:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjw-000000031t5-48Cf
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005c6-Kv; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24V-7l; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-2d;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:54 +0200
Message-Id: <20240424064058.3608016-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_130172_511F3D9F 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH master 19/23] usb: hub: use DMA-capable memory in usb_hub_configure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

usb_hub_configure does a lot of control transfers to `buffer', a
stack-allocated variable. Switch it to a suitably aligned buffer
allocated with dma_alloc() instead.

The cleanup on error intentionally doesn't touch `hub'. Errors should
probably invalidate this, but that's out-of-scope for this DMA fix.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/hub.c | 34 +++++++++++++++++++++-------------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 9776fd72a5a4..bef428f7fbd3 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -443,12 +443,16 @@ static int usb_device_list_scan(void)
 
 static int usb_hub_configure(struct usb_device *dev)
 {
-	unsigned char buffer[USB_BUFSIZ], *bitmap;
+	unsigned char *buffer, *bitmap;
 	struct usb_hub_descriptor *descriptor;
 	struct usb_hub_status *hubsts;
 	int i, ret;
 	struct usb_hub_device *hub;
 
+	buffer = dma_alloc(USB_BUFSIZ);
+	if (!buffer)
+		return -ENOMEM;
+
 	hub = xzalloc(sizeof (*hub));
 	dev->hub = hub;
 
@@ -457,7 +461,8 @@ static int usb_hub_configure(struct usb_device *dev)
 	if (usb_get_hub_descriptor(dev, buffer, 4) < 0) {
 		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				   "descriptor, giving up %lX\n", __func__, dev->status);
-		return -1;
+		ret = -1;
+		goto out;
 	}
 	descriptor = (struct usb_hub_descriptor *)buffer;
 
@@ -467,13 +472,15 @@ static int usb_hub_configure(struct usb_device *dev)
 		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				"descriptor - too long: %d\n", __func__,
 				descriptor->bLength);
-		return -1;
+		ret = -1;
+		goto out;
 	}
 
 	if (usb_get_hub_descriptor(dev, buffer, descriptor->bLength) < 0) {
 		dev_dbg(&dev->dev, "%s: failed to get hub " \
 				"descriptor 2nd giving up %lX\n", __func__, dev->status);
-		return -1;
+		ret = -1;
+		goto out;
 	}
 	memcpy((unsigned char *)&hub->desc, buffer, descriptor->bLength);
 	/* adjust 16bit values */
@@ -589,13 +596,15 @@ static int usb_hub_configure(struct usb_device *dev)
 	if (sizeof(struct usb_hub_status) > USB_BUFSIZ) {
 		dev_dbg(&dev->dev, "%s: failed to get Status - " \
 				"too long: %d\n", __func__, descriptor->bLength);
-		return -1;
+		ret = -1;
+		goto out;
 	}
 
 	if (usb_get_hub_status(dev, buffer) < 0) {
 		dev_dbg(&dev->dev, "%s: failed to get Status %lX\n", __func__,
 				dev->status);
-		return -1;
+		ret = -1;
+		goto out;
 	}
 
 	hubsts = (struct usb_hub_status *)buffer;
@@ -610,16 +619,12 @@ static int usb_hub_configure(struct usb_device *dev)
 		"" : "no ");
 
 	if (dev->host->update_hub_device) {
-		int ret;
-
 		ret = dev->host->update_hub_device(dev);
 		if (ret)
-			return ret;
+			goto out;
 	}
 
 	if (!usb_hub_is_root_hub(dev) && usb_hub_is_superspeed(dev)) {
-		int ret;
-
 		/*
 		* This request sets the value that the hub uses to
 		* determine the index into the 'route string index'
@@ -629,13 +634,16 @@ static int usb_hub_configure(struct usb_device *dev)
 		if (ret < 0) {
 			dev_dbg(&dev->dev, "failed to set hub depth (0x%08lx)\n",
 				dev->status);
-			return ret;
+			goto out;
 		}
 	}
 
 	usb_hub_power_on(hub);
 
-	return 0;
+	ret = 0;
+out:
+	dma_free(buffer);
+	return ret;
 }
 
 static int usb_hub_configure_ports(struct usb_device *dev)
-- 
2.39.2



