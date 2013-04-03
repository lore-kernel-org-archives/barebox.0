Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIXw-0005ir-V3
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:55:54 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Apr 2013 09:55:45 +0200
Message-Id: <1364975745-1479-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1364975745-1479-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1364975745-1479-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: zedboard: add ethernet device
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The ZedBoard has a connection for the GEM0. Use it.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/avnet-zedboard/board.c    | 13 +++++++++++++
 arch/arm/boards/avnet-zedboard/lowlevel.c | 11 ++++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index 4e3d5a5..7b95754 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -29,6 +29,19 @@ static int zedboard_mem_init(void)
 }
 mem_initcall(zedboard_mem_init);
 
+static struct macb_platform_data macb_pdata = {
+	.phy_interface = PHY_INTERFACE_MODE_RGMII,
+	.phy_addr = 0x0,
+};
+
+static int zedboard_device_init(void)
+{
+	zynq_add_eth0(&macb_pdata);
+
+	return 0;
+}
+device_initcall(zedboard_device_init);
+
 static int zedboard_console_init(void)
 {
 	zynq_add_uart1();
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index b50886e..fb05ef8 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -233,14 +233,23 @@ void __naked barebox_arm_reset_vector(void)
 	/* poor mans clkctrl */
 	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
 
+	/* GEM0 */
 	writel(0x00000001, 0xf8000138);
-	writel(0x00100801, 0xf8000140);
+	writel(0x00500801, 0xf8000140);
 	writel(0x00000302, 0xf8000740);
 	writel(0x00000302, 0xf8000744);
 	writel(0x00000302, 0xf8000748);
 	writel(0x00000302, 0xf800074C);
 	writel(0x00000302, 0xf8000750);
 	writel(0x00000302, 0xf8000754);
+	writel(0x00001303, 0xf8000758);
+	writel(0x00001303, 0xf800075C);
+	writel(0x00001303, 0xf8000760);
+	writel(0x00001303, 0xf8000764);
+	writel(0x00001303, 0xf8000768);
+	writel(0x00001303, 0xf800076C);
+	writel(0x00001280, 0xf80007D0);
+	writel(0x00001280, 0xf80007D4);
 
 	writel(0x00000001, 0xf8000B00);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
