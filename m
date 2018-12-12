Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX5EE-00042v-LL
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 14:11:19 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 12 Dec 2018 15:10:49 +0100
Message-Id: <20181212141054.7513-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
References: <20181212141054.7513-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/6] mach-bcm2835/core: add clkdev for uart1
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a clkdev for uart1 which will be used on the Raspberry Pi 3.
Double the clockrate since the ns16550 driver used for the uart will divide by
16, while the bcm2835 peripheral manual describes that the bcm2835 miniuart will
only divide by 8.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-bcm283x/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
index f1dcda86f..66af76b09 100644
--- a/arch/arm/mach-bcm283x/core.c
+++ b/arch/arm/mach-bcm283x/core.c
@@ -42,6 +42,12 @@ static int bcm2835_clk_init(void)
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
 	clkdev_add_physbase(clk, 0x20201000, NULL);
 	clkdev_add_physbase(clk, 0x3f201000, NULL);
+	/*
+	 * We double the clock rate since the 16550 will divide by 16
+	 * (instead of 8 required by the BCM2835 peripheral manual)
+	 */
+	clk = clk_fixed("uart1-8250", 500 * 1000 * 1000);
+	clkdev_add_physbase(clk, 0x3f215040, NULL);
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
