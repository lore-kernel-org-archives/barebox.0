Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QP-NI
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:50 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:24 +0100
Message-Id: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 01/11] Revert "ARM: dts: bcm2835-rpi: re-enable booting from
 SD card"
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

Since d6d3d0aecece ("mci: add driver for BCM283x sdhost core"), we now
have driver support for the sdhost controller in barebox as well.
We can thus drop the device tree override and use the same MCI the
kernel uses. This was tested on a Raspberry Pi zero W, which has
the same bcm2835 SoC as the Raspberry Pi 1.

This reverts commit abc0447440d68af720127fcca3c17f04ee144fcc.

Cc: Roland Hieber <rhi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/bcm2835-rpi.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index 4f227508010b..cc5a8a927112 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -9,11 +9,3 @@
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
-
-&sdhci {
-	status = "okay";
-};
-
-&sdhost {
-	status = "disabled";
-};
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
