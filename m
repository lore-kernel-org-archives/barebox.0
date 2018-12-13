Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005Qd-Cf
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:50 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:24 +0100
Message-Id: <20181213074430.25614-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/8] ARM: rpi: move clks into board specific rpi-common
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

We don't know if the firmware running on the raspberry pi is the same firmware
which is running on all bcm283x devices.
Therefore move the console clock initialization into the rpi-common.c board file.
A future commit will use this function to retrieve the miniuart clock from the
raspberry pi firmware.
No functional changes.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 19 +++++++++++++++++++
 arch/arm/mach-bcm283x/core.c              | 19 -------------------
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 840f525bb..887f096f7 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -298,6 +298,25 @@ static int rpi_clock_init(void)
 }
 postconsole_initcall(rpi_clock_init);
 
+static int rpi_console_clock_init(void)
+{
+	struct clk *clk;
+
+	clk = clk_fixed("apb_pclk", 0);
+	clk_register_clkdev(clk, "apb_pclk", NULL);
+
+	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "uart0-pl0110");
+	clkdev_add_physbase(clk, 0x20201000, NULL);
+	clkdev_add_physbase(clk, 0x3f201000, NULL);
+
+	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
+	clk_register_clkdev(clk, NULL, "bcm2835-cs");
+
+	return 0;
+}
+postcore_initcall(rpi_console_clock_init);
+
 static int rpi_env_init(void)
 {
 	struct stat s;
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index f1dcda86f..f2528cf1f 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -31,25 +31,6 @@
 #include <mach/core.h>
 #include <linux/amba/bus.h>
 
-static int bcm2835_clk_init(void)
-{
-	struct clk *clk;
-
-	clk = clk_fixed("apb_pclk", 0);
-	clk_register_clkdev(clk, "apb_pclk", NULL);
-
-	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
-	clk_register_clkdev(clk, NULL, "uart0-pl0110");
-	clkdev_add_physbase(clk, 0x20201000, NULL);
-	clkdev_add_physbase(clk, 0x3f201000, NULL);
-
-	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
-	clk_register_clkdev(clk, NULL, "bcm2835-cs");
-
-	return 0;
-}
-postcore_initcall(bcm2835_clk_init);
-
 void bcm2835_add_device_sdram(u32 size)
 {
 	if (!size)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
