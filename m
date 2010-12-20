Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUcRx-0000OQ-Pk
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 09:54:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Dec 2010 10:53:51 +0100
Message-Id: <1292838831-25038-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
References: <1292838831-25038-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] ARM pcm043 board: Add LED support
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/pcm043.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 2191bc8..38f1b8f 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -39,6 +39,7 @@
 #include <mach/imx-nand.h>
 #include <fec.h>
 #include <fb.h>
+#include <led.h>
 #include <asm/mmu.h>
 #include <mach/imx-ipu-fb.h>
 #include <mach/imx-pll.h>
@@ -148,6 +149,10 @@ static int pcm043_mmu_init(void)
 postcore_initcall(pcm043_mmu_init);
 #endif
 
+struct gpio_led led0 = {
+	.gpio = 1 * 32 + 6,
+};
+
 static int imx35_devices_init(void)
 {
 	uint32_t reg;
@@ -157,6 +162,8 @@ static int imx35_devices_init(void)
 	writel(0x10000d03, CSCR_L(0));
 	writel(0x00720900, CSCR_A(0));
 
+	led_gpio_register(&led0);
+
 	reg = readl(IMX_CCM_BASE + CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
 	if (reg & 0x20000000)
@@ -226,7 +233,8 @@ static struct pad_desc pcm043_pads[] = {
 	MX35_PAD_RTS1__UART1_RTS,
 	MX35_PAD_CTS1__UART1_CTS,
 	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA
+	MX35_PAD_I2C1_DAT__I2C1_SDA,
+	MX35_PAD_ATA_CS0__GPIO2_6, /* LED */
 };
 
 static int imx35_console_init(void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
