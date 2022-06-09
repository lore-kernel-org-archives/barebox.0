Delivery-date: Thu, 09 Jun 2022 08:01:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEg-008S3K-QA
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:01:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBEd-00019M-5Q
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:01:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UecdqYmJl5FSZSatJXObFRwaHof5NUw8LycmW/EClQ=; b=yDDSlLsQ038Xtn
	uDXopATyb+U3RJyztijEakQmG/6i0/LTO67oUzv+mk8ZVLEU9tAxer81WFRyK1uDTKIrYZv+ra5gV
	XxBK/7qg9QBCHewobFu/5qzR7NzvnPyn/NnfYQuqNCRJkKsJqC8C1Du2fkz7j2dtAS4sgO8y2n+EL
	GIb/lCBakZyj6sgKDQb8m5R+w5e1GSJ32Mh6YMn3XA7meGvmMukd+lFvP7OrnYoMZ1FDbhAT72eeJ
	kH+gzwW5vpAGa1gNhlgS9hXHl/3ZDNoV8SnkxAri8guCOEIWpYThrUQeiylQRgTT9LnJWzdoM8Hl5
	TXeUDlsgsfSr5VMew/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBDC-00GvN2-WD; Thu, 09 Jun 2022 06:00:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCa-00Guz0-5Y
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCY-0008HJ-VD; Thu, 09 Jun 2022 07:59:27 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCZ-007K9N-Gz; Thu, 09 Jun 2022 07:59:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002na9-DN; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:16 +0200
Message-Id: <20220609055922.667016-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225928_267843_37D0D073 
X-CRM114-Status: GOOD (  17.09  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 15/21] clk: rpi: add Raspberry Pi 4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our Raspberry Pi block driver is a hack, but it works well enough for
older Rpis and just needs one more clock to support the SD-Card on the
Raspberry Pi 4, so add that. In return, we remove bcm2835-cs, which we
won't use on Raspberry Pi 4, because we'll leverage the ARM architected
timer instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-bcm283x/include/mach/mbox.h |  1 +
 drivers/clk/clk-rpi.c                     | 42 +++++++++++++++++------
 2 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index a9f06512bc23..46f9dfc9ea65 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -273,6 +273,7 @@ struct bcm2835_mbox_tag_set_power_state {
 #define BCM2835_MBOX_CLOCK_ID_SDRAM	8
 #define BCM2835_MBOX_CLOCK_ID_PIXEL	9
 #define BCM2835_MBOX_CLOCK_ID_PWM	10
+#define BCM2835_MBOX_CLOCK_ID_EMMC2	12
 
 struct bcm2835_mbox_tag_get_clock_rate {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
index 59ae8e59bac5..71badc04c0f0 100644
--- a/drivers/clk/clk-rpi.c
+++ b/drivers/clk/clk-rpi.c
@@ -40,10 +40,29 @@ static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
 	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
 }
 
-static int bcm2835_cprman_probe(struct device_d *dev)
+static int bcm2835_cprman_init(struct device_d *dev)
 {
 	struct clk *clk_cs;
 
+	clk_cs = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
+	clk_register_clkdev(clk_cs, NULL, "bcm2835-cs");
+
+	return 0;
+}
+
+static int rpi_cprman_probe(struct device_d *dev)
+{
+	int (*init)(struct device_d *dev);
+
+	init = device_get_match_data(dev);
+	if (init) {
+		int ret;
+
+		ret = init(dev);
+		if (ret)
+			return ret;
+	}
+
 	clks[BCM2835_CLOCK_EMMC] =
 		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
 					 "bcm2835_mci0");
@@ -56,12 +75,15 @@ static int bcm2835_cprman_probe(struct device_d *dev)
 	if (IS_ERR(clks[BCM2835_CLOCK_VPU]))
 		return PTR_ERR(clks[BCM2835_CLOCK_VPU]);
 
+	clks[BCM2711_CLOCK_EMMC2] =
+		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC2,
+					 "bcm2711_emmc2");
+	if (IS_ERR(clks[BCM2711_CLOCK_EMMC2]))
+		return PTR_ERR(clks[BCM2711_CLOCK_EMMC2]);
+
 	clks[BCM2835_CLOCK_UART] = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
 	clk_register_clkdev(clks[BCM2835_CLOCK_UART], NULL, "uart0-pl0110");
 
-	clk_cs = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
-	clk_register_clkdev(clk_cs, NULL, "bcm2835-cs");
-
 	clk_data.clks = clks;
 	clk_data.clk_num = BCM2711_CLOCK_END;
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
@@ -70,16 +92,14 @@ static int bcm2835_cprman_probe(struct device_d *dev)
 }
 
 static __maybe_unused struct of_device_id bcm2835_cprman_dt_ids[] = {
-	{
-		.compatible = "brcm,bcm2835-cprman",
-	}, {
-		/* sentinel */
-	}
+	{ .compatible = "brcm,bcm2835-cprman", .data = bcm2835_cprman_init },
+	{ .compatible = "brcm,bcm2711-cprman" },
+	{ /* sentinel */ }
 };
 
 static struct driver_d bcm2835_cprman_driver = {
-	.probe	= bcm2835_cprman_probe,
-	.name	= "bcm2835-cprman",
+	.probe	= rpi_cprman_probe,
+	.name	= "raspberrypi-cprman",
 	.of_compatible = DRV_OF_COMPAT(bcm2835_cprman_dt_ids),
 };
 core_platform_driver(bcm2835_cprman_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

