Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLD-0006gW-2A
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:47 +0100
Message-Id: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/10] ARM: dts: stm32mp: move alias to SoC device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We'll want reliable ordering for other SD/MMC using boards as well, thus
move the alias out of the board device tree into the SoC's.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dtsi | 4 ----
 arch/arm/dts/stm32mp157c.dtsi     | 1 +
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index e9e386a6649f..6be208f32ef2 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -8,10 +8,6 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	aliases {
-		mmc0 = &sdmmc1;
-	};
-
 	chosen {
 		environment {
 			compatible = "barebox,environment";
diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index 97c075a020f8..decb4ab6d5c4 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -18,6 +18,7 @@
 		gpio9 = &gpioj;
 		gpio10 = &gpiok;
 		gpio25 = &gpioz;
+		mmc0 = &sdmmc1;
 	};
 
 	psci {
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
