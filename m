Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000VZ-Ev
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:29 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:10 +0200
Message-Id: <1280915957-2910-7-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 06/13] beagle: Add missing pinmux for usb
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/omap/board-beagle.c |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 5daad86..01c6cd2 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -189,6 +189,20 @@ static void mux_config(void)
 	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
 	/* I2C1_SCL default mux mode is mode0 */
 	/* I2C1_SDA default mux mode is mode0 */
+	/* USB EHCI (port 2) */
+	MUX_VAL(CP(MCSPI1_CS3),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CLK),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SIMO),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_SOMI),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS0),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(MCSPI2_CS1),		(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D10_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D11_ES2),	(IDIS | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D12_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D13_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
+	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
 }
 
 /**
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
