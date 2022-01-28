Delivery-date: Fri, 28 Jan 2022 09:24:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYw-00FmXi-Hh
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 09:24:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYu-0002MH-Nh
	for lore@pengutronix.de; Fri, 28 Jan 2022 09:24:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXWXJosGLsDH3nXelzvDraxYp6y/80Yi28+UM9/HMPQ=; b=sxElk/O8aON1kF
	aYl1f0g/JWvdcuYeVv+HCVcQIoNU5eiw2ai2lXKkrb794pZLIF2F+4/3YsdevC7OaVCfxYSIMAC3Q
	mhW49/UP83MCexLi50VBii4XzFmn8diXdkXaNeZ6y+vYmXnAZa5rZjiDD2fSESnohvGZ4rV/TtnQo
	A+GDVOz0giZ2TA2ejF79d79y0NfaZfwQLsZSzoOgmfdqrg9mA5UHWAf4rVvn/4NIfW/zFgbZ238CR
	gzjHTnI+gLehNvLFNnjnvWeO6O59htHK6FPKUwopFJJEqhq9h3X7j7o4Mj12a6qNGi49E3pHiIyr+
	OT8J762KbRxoSY4gyoWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDMXg-000zZR-Cq; Fri, 28 Jan 2022 08:23:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDMXT-000zUe-8L
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 08:23:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXQ-00026c-CU; Fri, 28 Jan 2022 09:23:20 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXP-00A74s-QA; Fri, 28 Jan 2022 09:23:19 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 28 Jan 2022 09:23:15 +0100
Message-Id: <20220128082317.2410427-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220128082317.2410427-1-o.rempel@pengutronix.de>
References: <20220128082317.2410427-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_002323_505466_598C1424 
X-CRM114-Status: GOOD (  22.19  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/4] ARM: rpi: move clk support to a separate driver and
 enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make deep-probe work properly, we need clock support be registered as
driver to related device.

To avoid regression, deep-probe is enabled in the same patch.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  75 +--------------
 drivers/clk/Makefile                      |   1 +
 drivers/clk/clk-rpi.c                     | 109 ++++++++++++++++++++++
 3 files changed, 112 insertions(+), 73 deletions(-)
 create mode 100644 drivers/clk/clk-rpi.c

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 247d12467a..ab40dba50f 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
 
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <fs.h>
 #include <of.h>
@@ -45,12 +46,6 @@ struct msg_get_arm_mem {
 	u32 end_tag;
 };
 
-struct msg_get_clock_rate {
-	struct bcm2835_mbox_hdr hdr;
-	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
-	u32 end_tag;
-};
-
 struct msg_get_board_rev {
 	struct bcm2835_mbox_hdr hdr;
 	struct bcm2835_mbox_tag_get_board_rev get_board_rev;
@@ -80,22 +75,6 @@ static int rpi_get_arm_mem(u32 *size)
 	return 0;
 }
 
-static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
-{
-	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
-	int ret;
-
-	BCM2835_MBOX_INIT_HDR(msg);
-	BCM2835_MBOX_INIT_TAG(&msg->get_clock_rate, GET_CLOCK_RATE);
-	msg->get_clock_rate.body.req.clock_id = clock_id;
-
-	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
-	if (ret)
-		return ERR_PTR(ret);
-
-	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
-}
-
 static void rpi_set_usbethaddr(void)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
@@ -343,57 +322,6 @@ static int rpi_postcore_init(void)
 }
 postcore_initcall(rpi_postcore_init);
 
-static int rpi_clock_init(void)
-{
-	struct clk *clk;
-
-	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
-					 "bcm2835_mci0");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	clkdev_add_physbase(clk, 0x20300000, NULL);
-	clkdev_add_physbase(clk, 0x3f300000, NULL);
-
-	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
-					  "bcm2835_sdhost");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	clkdev_add_physbase(clk, 0x20202000, NULL);
-	clkdev_add_physbase(clk, 0x3f202000, NULL);
-
-	return 0;
-}
-postconsole_initcall(rpi_clock_init);
-
-static int rpi_console_clock_init(void)
-{
-	struct clk *clk;
-
-	clk = clk_fixed("apb_pclk", 0);
-	clk_register_clkdev(clk, "apb_pclk", NULL);
-
-	clk = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
-	clk_register_clkdev(clk, NULL, "uart0-pl0110");
-	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
-	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
-
-	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
-					  "uart1-8250");
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	clkdev_add_physbase(clk, BCM2835_MINIUART_BASE, NULL);
-	clkdev_add_physbase(clk, BCM2836_MINIUART_BASE, NULL);
-
-	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
-	clk_register_clkdev(clk, NULL, "bcm2835-cs");
-
-	return 0;
-}
-postcore_initcall(rpi_console_clock_init);
-
 static int rpi_env_init(void)
 {
 	struct stat s;
@@ -552,6 +480,7 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,3-model-b-plus" },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
 
 static struct driver_d rpi_board_driver = {
 	.name = "board-rpi",
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 499df2fe39..9675d45dc9 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -24,3 +24,4 @@ obj-$(CONFIG_ARCH_LAYERSCAPE)	+= clk-qoric.o
 obj-y				+= analogbits/
 obj-$(CONFIG_CLK_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
+obj-$(CONFIG_MACH_RPI_COMMON)	+= clk-rpi.o
diff --git a/drivers/clk/clk-rpi.c b/drivers/clk/clk-rpi.c
new file mode 100644
index 0000000000..5afaa6e8bb
--- /dev/null
+++ b/drivers/clk/clk-rpi.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include <mach/core.h>
+#include <mach/mbox.h>
+#include <mach/platform.h>
+#include <dt-bindings/clock/bcm2835.h>
+
+#define BCM2711_CLOCK_END			(BCM2711_CLOCK_EMMC2 + 1)
+
+static struct clk *clks[BCM2711_CLOCK_END];
+static struct clk_onecell_data clk_data;
+
+struct msg_get_clock_rate {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
+	u32 end_tag;
+};
+
+static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_clock_rate, msg);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_clock_rate, GET_CLOCK_RATE);
+	msg->get_clock_rate.body.req.clock_id = clock_id;
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
+}
+
+static int bcm2835_cprman_probe(struct device_d *dev)
+{
+	struct device_node *mbox_node;
+	struct clk *clk_cs;
+	int ret;
+
+	mbox_node = of_find_compatible_node(NULL, NULL, "brcm,bcm2835-mbox");
+	if (!mbox_node) {
+		pr_err("Missing mbox node\n");
+		return -ENOENT;
+	}
+
+	ret = of_device_ensure_probed(mbox_node);
+	if (ret) {
+		pr_err("Can't probe mbox node. %i\n", ret);
+		return ret;
+	}
+
+	clks[BCM2835_CLOCK_EMMC] =
+		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
+					 "bcm2835_mci0");
+	if (IS_ERR(clks[BCM2835_CLOCK_EMMC]))
+		return PTR_ERR(clks[BCM2835_CLOCK_EMMC]);
+
+	clkdev_add_physbase(clks[BCM2835_CLOCK_EMMC], 0x20300000, NULL);
+	clkdev_add_physbase(clks[BCM2835_CLOCK_EMMC], 0x3f300000, NULL);
+
+	clks[BCM2835_CLOCK_VPU] =
+		rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
+					    "vpu");
+	if (IS_ERR(clks[BCM2835_CLOCK_VPU]))
+		return PTR_ERR(clks[BCM2835_CLOCK_VPU]);
+
+	clkdev_add_physbase(clks[BCM2835_CLOCK_VPU], 0x20202000, NULL);
+	clkdev_add_physbase(clks[BCM2835_CLOCK_VPU], 0x3f202000, NULL);
+	clkdev_add_physbase(clks[BCM2835_CLOCK_VPU], BCM2835_MINIUART_BASE, NULL);
+	clkdev_add_physbase(clks[BCM2835_CLOCK_VPU], BCM2836_MINIUART_BASE, NULL);
+
+	clks[BCM2835_CLOCK_UART] = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
+	clk_register_clkdev(clks[BCM2835_CLOCK_UART], NULL, "uart0-pl0110");
+	clkdev_add_physbase(clks[BCM2835_CLOCK_UART], BCM2835_PL011_BASE, NULL);
+	clkdev_add_physbase(clks[BCM2835_CLOCK_UART], BCM2836_PL011_BASE, NULL);
+
+	clk_cs = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
+	clk_register_clkdev(clk_cs, NULL, "bcm2835-cs");
+
+	clk_data.clks = clks;
+	clk_data.clk_num = BCM2711_CLOCK_END;
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id bcm2835_cprman_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm2835-cprman",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d bcm2835_cprman_driver = {
+	.probe	= bcm2835_cprman_probe,
+	.name	= "bcm2835-cprman",
+	.of_compatible = DRV_OF_COMPAT(bcm2835_cprman_dt_ids),
+};
+core_platform_driver(bcm2835_cprman_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

