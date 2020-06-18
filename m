Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZm-0001xF-P4
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:58 +0200
Message-Id: <20200618091102.30150-12-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/15] ARM: i.MX7: dts: replace commented-out code with status
 = "disabled"
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

A status = "disabled" node should act the same as if it were
uncommented, with the difference that a board that does have the
resistor populated could easily fixup the status.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx7d-pba-c-09.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx7d-pba-c-09.dtsi b/arch/arm/dts/imx7d-pba-c-09.dtsi
index 7106d6bfd735..0b2a987fd440 100644
--- a/arch/arm/dts/imx7d-pba-c-09.dtsi
+++ b/arch/arm/dts/imx7d-pba-c-09.dtsi
@@ -36,7 +36,6 @@
 		};
 
 		/* Enable if R9 is populated. Conflicts with userbtn2 on PEB-EVAL-02 */
-		/*
 		reg_can1_3v3: regulator@2 {
 			compatible = "regulator-fixed";
 			reg = <2>;
@@ -45,8 +44,8 @@
 			regulator-max-microvolt = <3300000>;
 			gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
 			enable-active-high;
+			status = "disabled";
 		};
-		*/
 	};
 };
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
