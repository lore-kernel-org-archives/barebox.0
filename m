Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRcjv-0000by-4c
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 12:45:23 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 27 Nov 2018 13:45:02 +0100
Message-Id: <20181127124502.13785-1-r.czerwinski@pengutronix.de>
In-Reply-To: <20181127085133.5415-1-r.czerwinski@pengutronix.de>
References: <20181127085133.5415-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] multiple/raspberry-pi: fix clkdevs for raspberry pi
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Commit 7e497d48acbd1184e3f6bd23bd16dfae84dd1129 introduced a name change which
breaks support for the fixed clkdev for uart and sdhci for RPI.
Use clkdev_add_physbase instead to be independant from the device tree names.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 arch/arm/mach-bcm283x/core.c              | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 3baed65255..b7ce0ad425 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -290,8 +290,8 @@ static int rpi_clock_init(void)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	clk_register_clkdev(clk, NULL, "20300000.sdhci");
-	clk_register_clkdev(clk, NULL, "3f300000.sdhci");
+	clkdev_add_physbase(clk, 0x20300000, NULL);
+	clkdev_add_physbase(clk, 0x3f300000, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index 26f0996b1c..f1dcda86f7 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -40,8 +40,8 @@ static int bcm2835_clk_init(void)
 
 	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
-	clk_register_clkdev(clk, NULL, "20201000.serial");
-	clk_register_clkdev(clk, NULL, "3f201000.serial");
+	clkdev_add_physbase(clk, 0x20201000, NULL);
+	clkdev_add_physbase(clk, 0x3f201000, NULL);
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
