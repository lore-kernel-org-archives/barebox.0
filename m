Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZCuw-0002oN-59
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 10:48:09 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 18 Dec 2018 11:47:38 +0100
Message-Id: <39d36e54718c9c5c75175e3836de5425b1f73fb3.1545130027.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v5 3/9] ARM: rpi: retrieve miniuart clock from firmware
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
index 490aeef..e29177d 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -309,6 +309,13 @@ static int rpi_console_clock_init(void)
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
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
