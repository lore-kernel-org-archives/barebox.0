Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005QZ-Co
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:49 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:25 +0100
Message-Id: <20181213074430.25614-4-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 3/8] ARM: rpi: retrieve miniuart clock from firmware
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The miniuart uses the core clock as the clock source. This clock is fixed by the
firmware to 250Mhz if enable_uart=1 is set in the config.txt file.
However a user could still choose to overclock the core frequency,
which would result in wrong baudrates computed by barebox.
Retrieve the core clock frequency from the firmware to allow all potential
firmware configurations to work with barebox.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 887f096f7..f22239c7c 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -310,6 +310,13 @@ static int rpi_console_clock_init(void)
 	clkdev_add_physbase(clk, 0x20201000, NULL);
 	clkdev_add_physbase(clk, 0x3f201000, NULL);
 
+	clk = rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
+					  "uart1-8250");
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	clkdev_add_physbase(clk, 0x3f215040, NULL);
+
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
