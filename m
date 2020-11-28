Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QT-Q1
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:51 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:28 +0100
Message-Id: <20201128213934.681065-5-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 05/11] ARM: rpi: support raspberry pi 1 and zero mini-uart
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

We don't have a clock driver for the raspberry pi, so board code needs
to list which used devices have clocks that are already known to be active
on boot. The Mini UART is one such device. We already wave away the
clock on the BCM2836, do the same for the BCM2835 as well.

Cc: Roland Hieber <rhi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c     | 1 +
 arch/arm/mach-bcm283x/include/mach/platform.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 292bcba608d4..46c8ad6f52d9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -347,6 +347,7 @@ static int rpi_console_clock_init(void)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	clkdev_add_physbase(clk, BCM2835_MINIUART_BASE, NULL);
 	clkdev_add_physbase(clk, BCM2836_MINIUART_BASE, NULL);
 
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index d8561c1610f1..310f2463f2e5 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -32,6 +32,7 @@
 
 #define BCM2835_PL011_BASE 0x20201000
 #define BCM2836_PL011_BASE 0x3f201000
+#define BCM2835_MINIUART_BASE 0x20215040
 #define BCM2836_MINIUART_BASE 0x3f215040
 
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
