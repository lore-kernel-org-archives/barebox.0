Delivery-date: Wed, 24 Apr 2024 09:09:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWko-00ER7t-0B
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWki-0006VV-AX
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e4m50HBCDWEBIclVQmEH6Yok0n5xs8LAdCpISoyna2M=; b=YtmokMtka5jrCFaO/rOnrbbSEI
	19hrIs2GyY8LqoeFrGzspWJyX+ktQTfdYEcVl9fzeGP7sPYkNQ877rFf0/DI87HSj5Aq/jm/3KwZ5
	iYRwqg6Yzskau7j/MDGFd6GDR0inlC/HA0tQLmkVlfaoT9GSKh/bZa1wRcibwa3w7E+iC4I/BlnKw
	/rOCG3PQDZ5K79P5qfRDNPvWV96HXxiOXLrmmS83dWgq1KlwC67kPe8K9uLrNkg971rPRHxUyRCkw
	WllgVk6GO6Zv3oMxGJdRiB5xbY/8yLZYjDzKXiUx3/qOKuZUlGaaN4LFCVn5jv4mjA0tcW6XcRO3Y
	dmAviadQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWkC-0000000324c-0MGL;
	Wed, 24 Apr 2024 07:08:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031tE-2Waw
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjw-0005dw-5s; Wed, 24 Apr 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E251-PJ; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-2D;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:51 +0200
Message-Id: <20240424064058.3608016-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_919110_E001B6B0 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: [PATCH master 16/23] net: usb: asix: use dma_alloc for buffers in USB control messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

usb_control_msg() expects DMA-capable memory for its data parameter,
but so far we passed buffers that may not have the correct alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/asix.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 9d34beab0df3..8ee0bc85348f 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -175,7 +175,7 @@ static int asix_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 	dev_dbg(&dev->edev.dev, "asix_read_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d\n",
 		cmd, value, index, size);
 
-	buf = malloc(size);
+	buf = dma_alloc(size);
 	if (!buf)
 		goto out;
 
@@ -193,7 +193,7 @@ static int asix_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 		memcpy(data, buf, size);
 	else if (err >= 0)
 		err = -EINVAL;
-	free(buf);
+	dma_free(buf);
 
 out:
 	return err;
@@ -209,7 +209,7 @@ static int asix_write_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 		cmd, value, index, size);
 
 	if (data) {
-		buf = malloc(size);
+		buf = dma_alloc(size);
 		if (!buf)
 			goto out;
 		memcpy(buf, data, size);
@@ -225,7 +225,7 @@ static int asix_write_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
 		buf,
 		size,
 		USB_CTRL_SET_TIMEOUT);
-	free(buf);
+	dma_free(buf);
 
 out:
 	return err;
-- 
2.39.2



