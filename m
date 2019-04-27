Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKSCB-0003kb-Sd
 for barebox@lists.infradead.org; Sat, 27 Apr 2019 18:37:10 +0000
Received: from antimon.fritz.box (a89-183-44-132.net-htp.de [89.183.44.132])
 by lynxeye.de (Postfix) with ESMTPA id 0FCE6E74241
 for <barebox@lists.infradead.org>; Sat, 27 Apr 2019 20:36:31 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Sat, 27 Apr 2019 20:36:27 +0200
Message-Id: <20190427183627.22549-5-l.stach@pengutronix.de>
In-Reply-To: <20190427183627.22549-1-l.stach@pengutronix.de>
References: <20190427183627.22549-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: rpi3: remove swapped sdhci and sdhost
To: barebox@lists.infradead.org

Now that we have a sdhost driver there is no need to swap those
peripherals. As the sdhci peripheral is only used for SDIO, which
isn't supported in Barebox disable it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/bcm2837-rpi-3.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index 51883613ce..420525b9e8 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -11,10 +11,5 @@
 };
 
 &sdhci {
-	pinctrl-0 = <&emmc_gpio48>;
-	/delete-node/ wifi@1;
-};
-
-&sdhost {
 	status = "disabled";
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
