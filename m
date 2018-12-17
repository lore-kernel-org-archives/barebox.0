Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYnKn-0001sJ-EL
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 07:29:03 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 08:28:00 +0100
Message-Id: <1856fb4bc00497d8463df146d5776f9941d6d6af.1545031438.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.48072dc0c2851fc176d68ed0eccf022fc17732e1.1545031438.git-series.r.czerwinski@pengutronix.de>
References: <cover.48072dc0c2851fc176d68ed0eccf022fc17732e1.1545031438.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 1/7] ARM: rpi: move clks into board specific rpi-common
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
index 9f0531f..490aeef 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -297,6 +297,25 @@ static int rpi_clock_init(void)
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
index f1dcda8..f2528cf 100644
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
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
