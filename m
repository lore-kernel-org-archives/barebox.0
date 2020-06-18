Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qZ-69
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:59 +0200
Message-Id: <20200618091102.30150-13-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/15] ARM: i.MX: mx53-qsrb: dts: remove now-superfluous
 override
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This gpio-keys node is now available upstream long with the
GPIO_ACTIVE_LOW flag, so we can drop the barebox override.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx53-qsb-common.dtsi | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index 24bbd6741aa2..5c692523c2e8 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -19,24 +19,6 @@
 			device-path = &bareboxenv;
 		};
 	};
-
-	/*
-	 * The buttons are marked as active high in the upstream dts.
-	 * Remove these once fixed upstream.
-	 */
-	gpio-keys {
-		power {
-			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
-		};
-
-		volume-up {
-			gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
-		};
-
-		volume-down {
-			gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
-		};
-	};
 };
 
 &esdhc1 {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
