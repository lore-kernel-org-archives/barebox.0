Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZCv9-0002r6-5Q
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 10:48:24 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 18 Dec 2018 11:47:44 +0100
Message-Id: <3358cd79a94a83760ee8277da18da3bea5dc036d.1545130027.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v5 9/9] ARM: rpi: use defines for uart bases
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Previously the clkdev_add_phybase was called on magic register values,
add defines which clarify the device for which the phybase clkdev is created.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index e29177d..b8a41b2 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -297,6 +297,10 @@ static int rpi_clock_init(void)
 }
 postconsole_initcall(rpi_clock_init);
 
+#define BCM2835_PL011_BASE 0x20201000
+#define BCM2836_PL011_BASE 0x3f201000
+#define BCM2836_MINIUART_BASE 0x3f215040
+
 static int rpi_console_clock_init(void)
 {
 	struct clk *clk;
@@ -306,15 +310,15 @@ static int rpi_console_clock_init(void)
 
 	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
-	clkdev_add_physbase(clk, 0x20201000, NULL);
-	clkdev_add_physbase(clk, 0x3f201000, NULL);
+	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
+	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
 
 	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
 					  "uart1-8250");
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	clkdev_add_physbase(clk, 0x3f215040, NULL);
+	clkdev_add_physbase(clk, BCM2836_MINIUART_BASE, NULL);
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
