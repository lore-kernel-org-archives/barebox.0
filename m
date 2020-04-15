Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeMJ-0000h8-AH
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:29:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Apr 2020 11:29:15 +0200
Message-Id: <20200415092916.21285-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200415092916.21285-1-a.fatoum@pengutronix.de>
References: <20200415092916.21285-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: at91: dts: specify aliases for sdmmc nodes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With Atmel SDHCI support incoming, we'll want the cards to have
predictable names. Extend the sama5d2.dtsi with an /aliases node.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91-sama5d27_giantboard.dts | 2 ++
 arch/arm/dts/at91-sama5d27_som1_ek.dts    | 1 +
 arch/arm/dts/sama5d2.dtsi                 | 8 ++++++++
 3 files changed, 11 insertions(+)

diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 940379e43005..7e48fa18ae71 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -17,6 +17,8 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/active-semi,8945a-regulator.h>
 
+#include "sama5d2.dtsi"
+
 / {
 	model = "Giant Board";
 	compatible = "groboards,sama5d27-giantboard", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index 936f07eac45e..cd038dc7c169 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -4,6 +4,7 @@
  */
 
 #include <arm/at91-sama5d27_som1_ek.dts>
+#include "sama5d2.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/sama5d2.dtsi b/arch/arm/dts/sama5d2.dtsi
index e69de29bb2d1..51e964fc0ff6 100644
--- a/arch/arm/dts/sama5d2.dtsi
+++ b/arch/arm/dts/sama5d2.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+/ {
+	aliases {
+		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc1;
+	};
+};
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
