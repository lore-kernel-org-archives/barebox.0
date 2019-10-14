Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzK7-0002ai-Be
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:50 +0200
Message-Id: <20191014121901.19471-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/12] ARM: at91: at91sam9x5ek: squelch new dtc warning
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Since v1.5.0, dtc has been applying a heuristic to detect spi busses. It
erroneously thinks the spi node in at91sam9x5ek.dts defines a spi bus:

  ./arch/arm/dts/at91sam9x5ek.dts:25.9-29.7: Warning (spi_bus_bridge):
  	/ahb/apb/pinctrl@fffff400/spi: incorrect #address-cells for SPI bus
  ./arch/arm/dts/at91sam9x5ek.dts:25.9-29.7: Warning (spi_bus_bridge):
  	/ahb/apb/pinctrl@fffff400/spi: incorrect #size-cells for SPI bus
  ./arch/arm/dts/at91sam9x5ek.dtb: Warning (spi_bus_reg):
  	Failed prerequisite 'spi_bus_bridge'

Avoid this by renaming the node. While at it move the node to top-level
to reduce indentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91sam9x5ek.dts | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index d5c7a8fe5c97..bc2a279709d3 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -19,18 +19,6 @@
 		status = "okay";
 	};
 
-	ahb {
-		apb {
-			pinctrl@fffff400 {
-				spi {
-					pinctrl_board_spi: spi-board {
-						atmel,pins = <AT91_PIOA 14 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
-					};
-				};
-			};
-		};
-	};
-
 	leds {
 		/*
 		 * PB18 has a resource conflict since it is both used
@@ -68,3 +56,10 @@
 	phy-mode = "rmii";
 };
 
+&{/ahb/apb/pinctrl@fffff400} {
+	spi0 {
+		pinctrl_board_spi: spi-board {
+			atmel,pins = <AT91_PIOA 14 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
+		};
+	};
+};
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
