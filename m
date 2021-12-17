Delivery-date: Fri, 17 Dec 2021 19:51:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIJp-009inH-Mc
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 19:51:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIJn-0002PW-TN
	for lore@pengutronix.de; Fri, 17 Dec 2021 19:51:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4v8Dtc93VBBs2MzSWj9NR27SPErDEfD2ExUcc7fa+lw=; b=hgP9eW5yhv9Cl9
	F9CuCBX6aoSdrpjXvan3MR7TmWrKoWWHNwq8rfXNwVvXAWsTAWzFyfXoN7YyvFBwvCoc1BIh3zeA7
	t/LKOIrpP6DRrbAjhNhLOCzL5Ze/yLom7MTH8BGKc5KL+v34JaQAYTSAOwHuPC//dxLInH69/GaJV
	BAWJ7/9V9Z742y0fc0gvEYo/pv1TtfYrdUSqkV7xpdBdJqeatEI5M1Aq7sFhZ226JMMI9Fcpb85Ci
	+QoDHn65rSWdpKcbJWbpwbl64zBkI5aV2/yln4Qx9DjOdIucCXalZwJZ+tkDkZjuZ/JFiZ6NL/n0+
	haiukkdBOyH5iWTlluFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIGz-00ByUp-Ly; Fri, 17 Dec 2021 18:48:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHso-00Bnme-S0
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 18:23:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0007xq-L8
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0054dj-HZ
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:01 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsi-00FoIm-NV
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:00 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Dec 2021 19:22:56 +0100
Message-Id: <20211217182300.3768235-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217182300.3768235-1-m.tretter@pengutronix.de>
References: <20211217182300.3768235-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_102307_134154_2D8284D3 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH 1/5] video: ssd1307fb: pass par instead of i2c client to write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By pushing the dependency to i2c down into the write function, the
remaining driver is less dependent on i2c. This allows to delay the
decision to use i2c until the actual bus write.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 69 ++++++++++++++++++++-------------------
 1 file changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 5d160ddf338a..61d0e083a3f7 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -93,9 +93,10 @@ static struct ssd1307fb_array *ssd1307fb_alloc_array(u32 len, u8 type)
 	return array;
 }
 
-static int ssd1307fb_write_array(struct i2c_client *client,
+static int ssd1307fb_write_array(struct ssd1307fb_par *par,
 				 struct ssd1307fb_array *array, u32 len)
 {
+	struct i2c_client *client = par->client;
 	int ret;
 
 	len += sizeof(struct ssd1307fb_array);
@@ -109,7 +110,7 @@ static int ssd1307fb_write_array(struct i2c_client *client,
 	return 0;
 }
 
-static inline int ssd1307fb_write_cmd(struct i2c_client *client, u8 cmd)
+static inline int ssd1307fb_write_cmd(struct ssd1307fb_par *par, u8 cmd)
 {
 	struct ssd1307fb_array *array;
 	int ret;
@@ -120,7 +121,7 @@ static inline int ssd1307fb_write_cmd(struct i2c_client *client, u8 cmd)
 
 	array->data[0] = cmd;
 
-	ret = ssd1307fb_write_array(client, array, 1);
+	ret = ssd1307fb_write_array(par, array, 1);
 	kfree(array);
 
 	return ret;
@@ -181,20 +182,20 @@ static void ssd1307fb_update_display(struct ssd1307fb_par *par)
 		}
 	}
 
-	ssd1307fb_write_array(par->client, array, par->width * par->height / 8);
+	ssd1307fb_write_array(par, array, par->width * par->height / 8);
 	kfree(array);
 }
 
 static void ssd1307fb_enable(struct fb_info *info)
 {
 	struct ssd1307fb_par *par = info->priv;
-	ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_ON);
+	ssd1307fb_write_cmd(par, SSD1307FB_DISPLAY_ON);
 }
 
 static void ssd1307fb_disable(struct fb_info *info)
 {
 	struct ssd1307fb_par *par = info->priv;
-	ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_OFF);
+	ssd1307fb_write_cmd(par, SSD1307FB_DISPLAY_OFF);
 }
 
 static void ssd1307fb_flush(struct fb_info *info)
@@ -215,134 +216,134 @@ static int ssd1307fb_init(struct ssd1307fb_par *par)
 	u32 precharge, dclk, com_invdir, compins;
 
 	/* Set initial contrast */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_CONTRAST);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_CONTRAST);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, par->contrast);
+	ret = ssd1307fb_write_cmd(par, par->contrast);
 	if (ret < 0)
 		return ret;
 
 	/* Set segment re-map */
 	if (par->seg_remap) {
-		ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SEG_REMAP_ON);
+		ret = ssd1307fb_write_cmd(par, SSD1307FB_SEG_REMAP_ON);
 		if (ret < 0)
 			return ret;
 	};
 
 	/* Set COM direction */
 	com_invdir = 0xc0 | (par->com_invdir & 0x1) << 3;
-	ret = ssd1307fb_write_cmd(par->client,  com_invdir);
+	ret = ssd1307fb_write_cmd(par,  com_invdir);
 	if (ret < 0)
 		return ret;
 
 	/* Set multiplex ratio value */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_MULTIPLEX_RATIO);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_MULTIPLEX_RATIO);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, par->height - 1);
+	ret = ssd1307fb_write_cmd(par, par->height - 1);
 	if (ret < 0)
 		return ret;
 
 	/* set display offset value */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_DISPLAY_OFFSET);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_DISPLAY_OFFSET);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, par->com_offset);
+	ret = ssd1307fb_write_cmd(par, par->com_offset);
 	if (ret < 0)
 		return ret;
 
 	/* Set clock frequency */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_CLOCK_FREQ);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_CLOCK_FREQ);
 	if (ret < 0)
 		return ret;
 
 	dclk = ((par->dclk_div - 1) & 0xf) | (par->dclk_frq & 0xf) << 4;
-	ret = ssd1307fb_write_cmd(par->client, dclk);
+	ret = ssd1307fb_write_cmd(par, dclk);
 	if (ret < 0)
 		return ret;
 
 	/* Set precharge period in number of ticks from the internal clock */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_PRECHARGE_PERIOD);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_PRECHARGE_PERIOD);
 	if (ret < 0)
 		return ret;
 
 	precharge = (par->prechargep1 & 0xf) | (par->prechargep2 & 0xf) << 4;
-	ret = ssd1307fb_write_cmd(par->client, precharge);
+	ret = ssd1307fb_write_cmd(par, precharge);
 	if (ret < 0)
 		return ret;
 
 	/* Set COM pins configuration */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_COM_PINS_CONFIG);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_COM_PINS_CONFIG);
 	if (ret < 0)
 		return ret;
 
 	compins = 0x02 | !(par->com_seq & 0x1) << 4
 				   | (par->com_lrremap & 0x1) << 5;
-	ret = ssd1307fb_write_cmd(par->client, compins);
+	ret = ssd1307fb_write_cmd(par, compins);
 	if (ret < 0)
 		return ret;
 
 	/* Set VCOMH */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_VCOMH);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_VCOMH);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, par->vcomh);
+	ret = ssd1307fb_write_cmd(par, par->vcomh);
 	if (ret < 0)
 		return ret;
 
 	/* Turn on the DC-DC Charge Pump */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_CHARGE_PUMP);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_CHARGE_PUMP);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client,
+	ret = ssd1307fb_write_cmd(par,
 		BIT(4) | (par->device_info->need_chargepump ? BIT(2) : 0));
 	if (ret < 0)
 		return ret;
 
 	/* Switch to horizontal addressing mode */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_ADDRESS_MODE);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_ADDRESS_MODE);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client,
+	ret = ssd1307fb_write_cmd(par,
 				  SSD1307FB_SET_ADDRESS_MODE_HORIZONTAL);
 	if (ret < 0)
 		return ret;
 
 	/* Set column range */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_COL_RANGE);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_COL_RANGE);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, 0x0);
+	ret = ssd1307fb_write_cmd(par, 0x0);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, par->width - 1);
+	ret = ssd1307fb_write_cmd(par, par->width - 1);
 	if (ret < 0)
 		return ret;
 
 	/* Set page range */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_SET_PAGE_RANGE);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_SET_PAGE_RANGE);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, 0x0);
+	ret = ssd1307fb_write_cmd(par, 0x0);
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client,
+	ret = ssd1307fb_write_cmd(par,
 				  par->page_offset + (par->height / 8) - 1);
 	if (ret < 0)
 		return ret;
 
 	/* Turn on the display */
-	ret = ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_ON);
+	ret = ssd1307fb_write_cmd(par, SSD1307FB_DISPLAY_ON);
 	if (ret < 0)
 		return ret;
 
@@ -564,7 +565,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 		}
 	}
 
-	ssd1307fb_write_array(par->client, array, par->width * par->height / 8);
+	ssd1307fb_write_array(par, array, par->width * par->height / 8);
 	kfree(array);
 
 	dev_info(&client->dev,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

