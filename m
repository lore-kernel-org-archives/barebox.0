Delivery-date: Mon, 17 Jan 2022 13:07:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmw-004Y4L-CK
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 13:07:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmr-0003zb-Uh
	for lore@pengutronix.de; Mon, 17 Jan 2022 13:07:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYl39E5chV+lq4bClTqeTtYHd2JyK55i0Z/+ObT/O+g=; b=PKzUQKn13tj5fM
	ZCQgXNPthKJGnC0X7LGn2VaIq/ZyTkvecq4pvpz3xlUFoQG9PrZm5Ur9ZsbHGN09B/RVcYvu75T/q
	G1mAO6leCuesI2/EJ4ZZFSni28DTZA4n9UQ+hqGLV9C+HQ6VcUXUiQqxRmzL9rXmEfTFR9f4BOTDZ
	12YPqD8wpjpE2HzKQxW8of5VtP4Ac4zrJrqeI32gUDpCx1C0J0xeJpYiT6Mw0p2ZPly8Q8FmoKTkn
	KFlgoD3Aan0bTxYnKLJGldlS5bXhkogAkx8DERYVUqMA2VuHHj+uh2YbydTdX9NBAXaEM3Qhh0mei
	I98fbs0PBjygZyikwnXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QlH-00ElRN-BP; Mon, 17 Jan 2022 12:05:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Ql0-00ElKm-Ip
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 12:05:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-0003X5-JV; Mon, 17 Jan 2022 13:05:02 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-00EvHB-2n; Mon, 17 Jan 2022 13:05:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Jan 2022 13:04:58 +0100
Message-Id: <20220117120500.3556703-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220117120500.3556703-1-o.rempel@pengutronix.de>
References: <20220117120500.3556703-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_040506_670373_DC51EC9F 
X-CRM114-Status: GOOD (  20.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/4] ARM: rpi: move clk support to a separate driver and
 enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make deep-probe work properly, we need clock support be registered as
driver to related device.

To avoid regression, deep-probe is enabled in the same patch.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 75 +-----------------
 drivers/clk/Makefile                      |  1 +
 drivers/clk/clk-rpi.c                     | 93 +++++++++++++++++++++++
 3 files changed, 96 insertions(+), 73 deletions(-)
 create mode 100644 drivers/clk/clk-rpi.c

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 43e7e66e0f..53c476c22a 100644
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
@@ -559,6 +487,7 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,3-compute-module-lite" },
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
index 0000000000..794d95a591
--- /dev/null
+++ b/drivers/clk/clk-rpi.c
@@ -0,0 +1,93 @@
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
+static int bcm2835_cprman_init(struct device_node *np)
+{
+	struct device_node *mbox_node;
+	struct clk *clk;
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
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_EMMC,
+					 "bcm2835_mci0");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, 0x20300000, NULL);
+	clkdev_add_physbase(clk, 0x3f300000, NULL);
+
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
+					  "bcm2835_sdhost");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, 0x20202000, NULL);
+	clkdev_add_physbase(clk, 0x3f202000, NULL);
+
+	clk = clk_fixed("apb_pclk", 0);
+	clk_register_clkdev(clk, "apb_pclk", NULL);
+
+	clk = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "uart0-pl0110");
+	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
+	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
+
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
+					  "uart1-8250");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, BCM2835_MINIUART_BASE, NULL);
+	clkdev_add_physbase(clk, BCM2836_MINIUART_BASE, NULL);
+
+	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "bcm2835-cs");
+
+	return 0;
+}
+/* CLK_OF_DECLARE should be used to make it probed before amba,pl011 */
+CLK_OF_DECLARE(bcm2835_cprman, "brcm,bcm2835-cprman", bcm2835_cprman_init);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

