Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048R-94
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I1-0005ON-Sp
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:37 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:31 +0100
Message-Id: <20170301143137.11570-3-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/9] ARM: rpi: convert mailbox interface to regular driver
To: barebox@lists.infradead.org

In prepareation for devicetree probing.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c     |  2 +
 arch/arm/mach-bcm283x/include/mach/core.h     |  6 +++
 arch/arm/mach-bcm283x/include/mach/mbox.h     | 19 +++++----
 arch/arm/mach-bcm283x/include/mach/platform.h |  1 +
 arch/arm/mach-bcm283x/mbox.c                  | 55 ++++++++++++++++++++++-----
 5 files changed, 63 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index db9af2be4245..d0f4fcb3bad9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -280,6 +280,8 @@ mem_initcall(rpi_mem_init);
 
 static int rpi_postcore_init(void)
 {
+	bcm2835_register_mbox();
+
 	rpi_get_board_rev();
 	barebox_set_hostname("rpi");
 
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/arch/arm/mach-bcm283x/include/mach/core.h
index b0bed80ea000..ce54d38707d8 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/arch/arm/mach-bcm283x/include/mach/core.h
@@ -32,4 +32,10 @@ static void inline bcm2835_register_fb(void)
 	add_generic_device("bcm2835_fb", 0, NULL, 0, 0, 0, NULL);
 }
 
+static void inline bcm2835_register_mbox(void)
+{
+	add_generic_device("bcm2835_mbox", 0, NULL, BCM2835_MBOX_BASE, 0x40,
+			   IORESOURCE_MEM, NULL);
+}
+
 #endif
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index cd9ee1f43415..2b5aea88ee0a 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -41,16 +41,15 @@
  */
 
 /* Raw mailbox HW */
-
-#define BCM2835_MBOX_PHYSADDR		(BCM2835_ARM_BASE + 0x880)
-
-struct bcm2835_mbox_regs {
-	u32 read;
-	u32 rsvd0[5];
-	u32 status;
-	u32 config;
-	u32 write;
-};
+#define ARM_0_MAIL0	0x00
+#define ARM_0_MAIL1	0x20
+
+#define MAIL0_RD	(ARM_0_MAIL0 + 0x00)
+#define MAIL0_POL	(ARM_0_MAIL0 + 0x10)
+#define MAIL0_STA	(ARM_0_MAIL0 + 0x18)
+#define MAIL0_CNF	(ARM_0_MAIL0 + 0x1C)
+#define MAIL1_WRT	(ARM_0_MAIL1 + 0x00)
+#define MAIL1_STA	(ARM_0_MAIL1 + 0x18)
 
 #define BCM2835_MBOX_STATUS_WR_FULL	0x80000000
 #define BCM2835_MBOX_STATUS_RD_EMPTY	0x40000000
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 3b73831aa522..09fe78fd41f6 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -41,6 +41,7 @@
 #define BCM2835_ST_BASE		(BCM2835_PERI_BASE + 0x3000)	/* System Timer */
 #define BCM2835_DMA_BASE	(BCM2835_PERI_BASE + 0x7000)	/* DMA controller */
 #define BCM2835_ARM_BASE	(BCM2835_PERI_BASE + 0xB000)	/* BCM2708 ARM control block */
+#define BCM2835_MBOX_BASE	(BCM2835_ARM_BASE + 0x880)	/* BCM2835 mailbox */
 #define BCM2835_PM_BASE		(BCM2835_PERI_BASE + 0x100000)	/* Power Management, Reset controller and Watchdog registers */
 #define BCM2835_GPIO_BASE	(BCM2835_PERI_BASE + 0x200000)	/* GPIO */
 #define BCM2835_UART0_BASE	(BCM2835_PERI_BASE + 0x201000)	/* Uart 0 */
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 9d69bc8ea784..b295993359fa 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -6,20 +6,21 @@
  * SPDX-License-Identifier:	GPL-2.0+
  */
 
-#include <asm/io.h>
-#include <common.h>
 #include <clock.h>
+#include <common.h>
 #include <dma.h>
+#include <init.h>
+#include <io.h>
 
 #include <mach/mbox.h>
 
 #define TIMEOUT (MSECOND * 1000)
 
+static void __iomem *mbox_base;
+
 static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 					u32 *recv)
 {
-	struct bcm2835_mbox_regs __iomem *regs =
-		(struct bcm2835_mbox_regs *)BCM2835_MBOX_PHYSADDR;
 	uint64_t starttime = get_time_ns();
 	u32 send = virt_to_phys(buffer);
 	u32 val;
@@ -31,19 +32,19 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 
 	/* Drain any stale responses */
 	for (;;) {
-		val = readl(&regs->status);
+		val = readl(mbox_base + MAIL0_STA);
 		if (val & BCM2835_MBOX_STATUS_RD_EMPTY)
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
 			printf("mbox: Timeout draining stale responses\n");
 			return -ETIMEDOUT;
 		}
-		val = readl(&regs->read);
+		val = readl(mbox_base + MAIL0_RD);
 	}
 
 	/* Wait for space to send */
 	for (;;) {
-		val = readl(&regs->status);
+		val = readl(mbox_base + MAIL0_STA);
 		if (!(val & BCM2835_MBOX_STATUS_WR_FULL))
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
@@ -57,11 +58,11 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	debug("mbox: TX raw: 0x%08x\n", val);
 	dma_sync_single_for_device((unsigned long)send, buffer->buf_size,
 				   DMA_BIDIRECTIONAL);
-	writel(val, &regs->write);
+	writel(val, mbox_base + MAIL1_WRT);
 
 	/* Wait for the response */
 	for (;;) {
-		val = readl(&regs->status);
+		val = readl(mbox_base + MAIL0_STA);
 		if (!(val & BCM2835_MBOX_STATUS_RD_EMPTY))
 			break;
 		if (is_timeout(starttime, TIMEOUT)) {
@@ -71,7 +72,7 @@ static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 	}
 
 	/* Read the response */
-	val = readl(&regs->read);
+	val = readl(mbox_base + MAIL0_RD);
 	debug("mbox: RX raw: 0x%08x\n", val);
 	dma_sync_single_for_cpu((unsigned long)send, buffer->buf_size,
 				DMA_BIDIRECTIONAL);
@@ -152,3 +153,37 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 
 	return 0;
 }
+
+static int bcm2835_mbox_probe(struct device_d *dev)
+{
+	struct resource *iores;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+	mbox_base = IOMEM(iores->start);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id bcm2835_mbox_dt_ids[] = {
+	{
+		.compatible = "brcm,bcm2835-mbox",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d bcm2835_mbox_driver = {
+	.name		= "bcm2835_mbox",
+	.of_compatible	= DRV_OF_COMPAT(bcm2835_mbox_dt_ids),
+	.probe		= bcm2835_mbox_probe,
+};
+
+static int __init bcm2835_mbox_init(void)
+{
+	return platform_driver_register(&bcm2835_mbox_driver);
+}
+core_initcall(bcm2835_mbox_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
