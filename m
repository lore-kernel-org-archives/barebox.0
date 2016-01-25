Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNezS-0002HK-G0
 for barebox@lists.infradead.org; Mon, 25 Jan 2016 11:07:23 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 25 Jan 2016 12:06:07 +0100
Message-Id: <1453719967-17358-1-git-send-email-ejo@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] arm: imx53-guf-vincell-lt: dts: do not specfiy fixed memory
 information
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Enrico Jorns <ejo@pengutronix.de>

Setting a fixed memory size prevents from using the different board
variants with different memories equipped.

barebox is able to read RAM size informations from the imx53 RAM
controller and thus does not require this information passed via dts.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/imx53-guf-vincell-lt.dts | 4 ----
 arch/arm/dts/imx53-guf-vincell.dts    | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index cbb9aab..95eac67 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -30,10 +30,6 @@
 		};
 	};
 
-	memory {
-		reg = <0x70000000 0x20000000>;
-	};
-
 	clocks {
 		ckih1 {
 			clock-frequency = <0>;
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index ffc157f..2f0153e 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -25,10 +25,6 @@
 		linux,stdout-path = &uart2;
 	};
 
-	memory {
-		reg = <0x70000000 0x20000000>;
-	};
-
 	clocks {
 		ckih1 {
 			clock-frequency = <0>;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
