Delivery-date: Fri, 17 Dec 2021 19:48:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHR-009ii6-I3
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 19:48:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIHP-0001vM-KT
	for lore@pengutronix.de; Fri, 17 Dec 2021 19:48:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAwDUAuQMO9PxYgrRsA/2T0EWQGRNZjeD11pfkVPGaY=; b=xIxQU6buJW8g94
	9XkMP2UvYZk/Dd1T0AsnSZi5Kk1P2s5PRtVIdgSU6p7PlshYQcL5S4YHfuotsRglkylmf/Smrdc8P
	3AX0wugxO8tlmX5M18Z+o/6P17kW9D+WX+Lx7g1Yq2PwMIFlBMa/MTkcUD8mSuhNcQ5KhPnplCijp
	mGJbtmainkgbKH/o3Uh8/7fVmAb9kisMDgrsZn/kXH8zp/nJ9a2t0VB4jTletDlyIEdbMGi6facmS
	8mlS9WxQ2Jkc0dwaKEc9eI6LU/VavINix3+pUFyG1nFjfp3Rzo0uQHitJjw43ZrrVfRQ+XAoKKBdG
	QT8cjsVqk7FowHUx5vnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIFu-00Bxuy-24; Fri, 17 Dec 2021 18:46:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHso-00Bnmj-Oi
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 18:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0007xr-Pe
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0054dm-OA
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsi-00FoIp-OB
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:00 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Dec 2021 19:22:57 +0100
Message-Id: <20211217182300.3768235-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217182300.3768235-1-m.tretter@pengutronix.de>
References: <20211217182300.3768235-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_102306_878703_CF462851 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] video: ssd1307fb: don't use i2c client for logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We can use the device directly and don't have to use the device that is
attached to the I2C client. This reduces the dependency on i2c.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 61d0e083a3f7..88c88e3253cf 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -401,7 +401,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 	int i, j;
 
 	if (!node) {
-		dev_err(&client->dev, "No device tree data found!\n");
+		dev_err(dev, "No device tree data found!\n");
 		return -EINVAL;
 	}
 
@@ -421,22 +421,22 @@ static int ssd1307fb_probe(struct device_d *dev)
 		goto fb_alloc_error;
 	}
 
-	par->vbat = regulator_get(&client->dev, "vbat");
+	par->vbat = regulator_get(dev, "vbat");
 	if (IS_ERR(par->vbat)) {
-		dev_info(&client->dev, "Will not use VBAT");
+		dev_info(dev, "Will not use VBAT");
 		par->vbat = NULL;
 	}
 
 	ret = of_property_read_u32(node, "solomon,width", &par->width);
 	if (ret) {
-		dev_err(&client->dev,
+		dev_err(dev,
 			"Couldn't find 'solomon,width' in device tree.\n");
 		goto panel_init_error;
 	}
 
 	ret = of_property_read_u32(node, "solomon,height", &par->height);
 	if (ret) {
-		dev_err(&client->dev,
+		dev_err(dev,
 			"Couldn't find 'solomon,height' in device tree.\n");
 		goto panel_init_error;
 	}
@@ -444,7 +444,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 	ret = of_property_read_u32(node, "solomon,page-offset",
 				   &par->page_offset);
 	if (ret) {
-		dev_err(&client->dev,
+		dev_err(dev,
 			"Couldn't find 'solomon,page_offset' in device tree.\n");
 		goto panel_init_error;
 	}
@@ -477,7 +477,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 	vmem = malloc(vmem_size);
 	if (!vmem) {
-		dev_err(&client->dev, "Couldn't allocate graphical memory.\n");
+		dev_err(dev, "Couldn't allocate graphical memory.\n");
 		ret = -ENOMEM;
 		goto fb_alloc_error;
 	}
@@ -508,7 +508,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 		ret = gpio_request_one(par->reset, flags, "oled-reset");
 		if (ret) {
-			dev_err(&client->dev,
+			dev_err(dev,
 				"failed to request gpio %d: %d\n",
 				par->reset, ret);
 			goto reset_oled_error;
@@ -546,7 +546,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 	info->dev.parent = dev;
 	ret = register_framebuffer(info);
 	if (ret) {
-		dev_err(&client->dev, "Couldn't register the framebuffer\n");
+		dev_err(dev, "Couldn't register the framebuffer\n");
 		goto panel_init_error;
 	}
 
@@ -568,7 +568,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 	ssd1307fb_write_array(par, array, par->width * par->height / 8);
 	kfree(array);
 
-	dev_info(&client->dev,
+	dev_info(dev,
 		 "ssd1307 framebuffer device registered, using %d bytes of video memory\n",
 		 vmem_size);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

