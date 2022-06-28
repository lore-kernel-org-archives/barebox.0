Delivery-date: Tue, 28 Jun 2022 22:41:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I17-000bMc-Kg
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:41:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I17-0004K9-TE
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pfQG/RW2EzlJqYTKNpwdZGJo1hpTBj8z7eaHGCxMG2U=; b=r0U2TYGTrgxZaFi6MdmYIrwHEZ
	KDkMUUgzoKYYO13IVg/E97v8CRMGZ3kAQegzmbR/xWi7HPloxXycBXldT9PQFggl3x0T4j22jcjxf
	2sDm7EfthX6s4RDINzBlnd/rlzqmnAGSIdBbRo4BOwy/UZ/eYcBkvAZ8RzphDOoGjGqJH5GG5XXww
	puPwXNDdDqWfcXpLMh6ney1/SPiuExVh2wPGCmY5Fr88kecb+ddV9a7A24BYp/g7UhCl01KJkkT3d
	5mveo52nEupzXQ59h1DLAJCibtNHWH7O46kD2tK8g4l8AFysD06XT1bh8cyWRV9NFeC+Gqg0LtpKw
	aVqxt3MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hzq-00850U-1L; Tue, 28 Jun 2022 20:39:42 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Hza-0084oi-EP
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=pfQG/RW2EzlJqYTKNpwdZGJo1hpTBj8z7eaHGCxMG2U=;
	b=VMMge758RcAnCEMy+soC8fBGtonTL4hQzhx9lMK9BKdrF4wWiQv6s6EaD2xTqUvx/cl+8WJFPkHL1
	 Dk7BeNzVp6PAsMerE3W4LpZ/AFahlTJWTkuv1zax2Edg8chK3bTUzjrELEqstzF0wwQgDSLXFcGMDs
	 enAPylGPrIEDotkWtL0fAhPfcCn+sAKkCmYM9d93oQshlBy5RmSnOQy1ylLnRnYYx5eFhXrDZFcK6N
	 V+nvO3mwGnMMwYNfcm0bezBnuqL6yJYQ81nCh/Q0QygvoK3+pRllDtzAUCSHwNkqDlswsIJ7byLPAr
	 41w76s/tCgjs2JXU+QigHYf1UHwDUKg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=pfQG/RW2EzlJqYTKNpwdZGJo1hpTBj8z7eaHGCxMG2U=;
	b=TWebkZRz65sjtMKOwekZTtnoFJEXlLgy2Cc6iJKCahhfI6OHEsKmUxM4Sfq/4qxgDH381TQrN/3kJ
	 8BKGyUiCw==
X-HalOne-Cookie: 89dac033204355cafe7aeec287bb8998da46dfec
X-HalOne-ID: 5bd42232-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 5bd42232-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:24 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:47 +0200
Message-Id: <20220628203849.2785611-10-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133926_737263_0F395C36 
X-CRM114-Status: GOOD (  21.92  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [WIP PATCH v2 09/11] atmel_lcdfb: add support for updated DT bindings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The updated bindings for the display node uses graph nodes to
identify the panel.

Update the driver to support the new binding:
- Add support for the video pipeline (vpl)
- Add guard-time to the chip info
- Move deprecated display support to own function

With this update there is support for specifying a backlight node
as part of the panel node.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb.c      |   6 ++
 drivers/video/atmel_lcdfb.h      |   4 +
 drivers/video/atmel_lcdfb_core.c | 125 +++++++++++++++++++++++++------
 3 files changed, 113 insertions(+), 22 deletions(-)

diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 38b4b8df3..1087102c4 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -231,26 +231,32 @@ static int atmel_lcdc_probe(struct device_d *dev)
 static struct atmel_lcdfb_config at91sam9261_config = {
 	.have_hozval		= true,
 	.have_intensity_bit	= true,
+	.guard_time		= 1,
 };
 
 static struct atmel_lcdfb_config at91sam9263_config = {
 	.have_intensity_bit	= true,
+	.guard_time		= 1,
 };
 
 static struct atmel_lcdfb_config at91sam9g10_config = {
 	.have_hozval		= true,
+	.guard_time		= 1,
 };
 
 static struct atmel_lcdfb_config at91sam9g45_config = {
 	.have_alt_pixclock	= true,
+	.guard_time		= 9,
 };
 
 static struct atmel_lcdfb_config at91sam9rl_config = {
 	.have_intensity_bit	= true,
+	.guard_time		= 1,
 };
 
 static struct atmel_lcdfb_config at32ap_config = {
 	.have_hozval		= true,
+	.guard_time		= 1,
 };
 
 static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
diff --git a/drivers/video/atmel_lcdfb.h b/drivers/video/atmel_lcdfb.h
index 110c71bdb..69a27cb23 100644
--- a/drivers/video/atmel_lcdfb.h
+++ b/drivers/video/atmel_lcdfb.h
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <fb.h>
+#include <video/vpl.h>
 #include <video/atmel_lcdc.h>
 
 struct atmel_lcdfb_info;
@@ -9,6 +10,7 @@ struct atmel_lcdfb_config {
 	bool have_alt_pixclock;
 	bool have_hozval;
 	bool have_intensity_bit;
+	unsigned int guard_time;
 };
 
 struct atmel_lcdfb_devdata {
@@ -25,6 +27,8 @@ struct atmel_lcdfb_info {
 	struct fb_info		info;
 	void __iomem		*mmio;
 	struct device_d		*device;
+	int			id;
+	struct vpl		vpl;
 
 	unsigned int		guard_time;
 	unsigned int		smem_len;
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 17f754b56..681b20a3d 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -13,6 +13,7 @@
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <malloc.h>
+#include <of_graph.h>
 
 #include <mach/cpu.h>
 
@@ -30,10 +31,8 @@ static void atmel_lcdfb_stop_clock(struct atmel_lcdfb_info *sinfo)
 	clk_disable(sinfo->lcdc_clk);
 }
 
-static void atmel_lcdc_power_controller(struct fb_info *fb_info, int on)
+static void atmel_lcdc_power_controller(struct atmel_lcdfb_info *sinfo, int on)
 {
-	struct atmel_lcdfb_info *sinfo = fb_info->priv;
-
 	if (sinfo->gpio_power_control < 0)
 		return;
 
@@ -48,7 +47,12 @@ static void atmel_lcdc_power_controller(struct fb_info *fb_info, int on)
  */
 static void atmel_lcdc_enable_controller(struct fb_info *fb_info)
 {
-	atmel_lcdc_power_controller(fb_info, 1);
+	struct atmel_lcdfb_info *sinfo = fb_info->priv;
+	struct fb_videomode *mode = fb_info->mode;
+
+	vpl_ioctl_prepare(&sinfo->vpl, sinfo->id, mode);
+	atmel_lcdc_power_controller(sinfo, 1);
+	vpl_ioctl_enable(&sinfo->vpl, sinfo->id);
 }
 
 /**
@@ -56,7 +60,11 @@ static void atmel_lcdc_enable_controller(struct fb_info *fb_info)
  */
 static void atmel_lcdc_disable_controller(struct fb_info *fb_info)
 {
-	atmel_lcdc_power_controller(fb_info, 0);
+	struct atmel_lcdfb_info *sinfo = fb_info->priv;
+
+	vpl_ioctl_disable(&sinfo->vpl, sinfo->id);
+	atmel_lcdc_power_controller(sinfo, 0);
+	vpl_ioctl_unprepare(&sinfo->vpl, sinfo->id);
 }
 
 
@@ -311,28 +319,14 @@ static int of_get_power_control(struct device_d *dev,
 	return power_control_init(dev, sinfo, gpio, active_low);
 }
 
-static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
+static int lcdfb_display_init(struct device_d *dev,
+			      struct atmel_lcdfb_info *sinfo,
+			      struct device_node *display)
 {
 	struct fb_info *info = &sinfo->info;
 	struct display_timings *modes;
-	struct device_node *display;
-	struct atmel_lcdfb_config *config;
 	int ret;
 
-	/* Driver data - optional */
-	ret = dev_get_drvdata(dev, (const void **)&config);
-	if (!ret) {
-		sinfo->have_hozval = config->have_hozval;
-		sinfo->have_intensity_bit = config->have_intensity_bit;
-		sinfo->have_alt_pixclock = config->have_alt_pixclock;
-	}
-
-	/* Required properties */
-	display = of_parse_phandle(dev->device_node, "display", 0);
-	if (!display) {
-		dev_err(dev, "no display phandle\n");
-		return -ENOENT;
-	}
 	ret = of_property_read_u32(display, "atmel,guard-time", &sinfo->guard_time);
 	if (ret < 0) {
 		dev_err(dev, "failed to get atmel,guard-time property\n");
@@ -373,9 +367,95 @@ static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
 		dev_err(dev, "failed to get power control gpio\n");
 		goto err;
 	}
+
 	return 0;
+
 err:
 	return ret;
+
+}
+
+static int lcdfb_of_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
+{
+	struct fb_info *info = &sinfo->info;
+	struct atmel_lcdfb_config *config;
+	struct device_node *display;
+	struct device_node *np = NULL;
+	struct of_endpoint ep;
+	int ret;
+
+	/* Driver data - optional */
+	ret = dev_get_drvdata(dev, (const void **)&config);
+	if (!ret) {
+		sinfo->have_hozval = config->have_hozval;
+		sinfo->have_intensity_bit = config->have_intensity_bit;
+		sinfo->have_alt_pixclock = config->have_alt_pixclock;
+
+		/* The display node will override the guard time if present */
+		sinfo->guard_time = config->guard_time;
+	}
+
+	/* The display handle is deprecated but still supported */
+	display = of_parse_phandle(dev->device_node, "display", 0);
+	if (display) {
+		return lcdfb_display_init(dev, sinfo, display);
+	}
+
+	for_each_available_child_of_node(dev->device_node, np) {
+		if (!of_graph_port_is_available(np))
+			continue;
+
+		ret = of_graph_parse_endpoint(np, &ep);
+		if (ret) {
+			dev_err(dev, "failed to parse endpoint\n");
+			return ret;
+		}
+		sinfo->id = ep.id;
+		break;
+	}
+
+	dev_dbg(dev, "register vpl for %s\n", dev->device_node->full_name);
+	ret = vpl_register(&sinfo->vpl);
+	if (ret)
+		return ret;
+
+	/* Only TFT panels - STN is obsolete */
+	sinfo->lcdcon2 = ATMEL_LCDC_DISTYPE_TFT;
+
+	/* LCDD Polarity normal */
+	sinfo->lcdcon2 |= ATMEL_LCDC_INVVD_NORMAL;
+
+	/* Clock is always active */
+	sinfo->lcdcon2 |= ATMEL_LCDC_CLKMOD_ALWAYSACTIVE;
+
+	/* Memory layout */
+	sinfo->lcdcon2 |= ATMEL_LCDC_MEMOR_LITTLE;
+
+	sinfo->dmacon = ATMEL_LCDC_DMAEN;
+
+	/* TODO: Maybe obtain this from panel */
+	info->bits_per_pixel = 16;
+
+	ret = vpl_ioctl(&sinfo->vpl, sinfo->id, VPL_GET_VIDEOMODES, &info->modes);
+	if (ret) {
+		dev_dbg(dev, "failed to get modes: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	/* Optional properties */
+	ret = of_get_wiring_mode(dev->device_node, sinfo);
+	if (ret < 0) {
+		dev_err(dev, "failed to get atmel,lcd-wiring-mode property\n");
+		return ret;
+	}
+
+	ret = of_get_power_control(dev, dev->device_node, sinfo);
+	if (ret < 0) {
+		dev_err(dev, "failed to get power control gpio\n");
+		return ret;
+	}
+
+	return 0;
 }
 
 static int lcdfb_pdata_init(struct device_d *dev, struct atmel_lcdfb_info *sinfo)
@@ -441,6 +521,7 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 	info = &sinfo->info;
 	info->priv = sinfo;
 	info->fbops = &atmel_lcdc_ops;
+	sinfo->vpl.node = dev->device_node;
 
 	if (dev->platform_data) {
 		ret = lcdfb_pdata_init(dev, sinfo);
-- 
2.34.1



