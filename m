Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1deiUw-00014l-5q
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 13:55:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1deiUZ-0001PZ-FV
 for barebox@lists.infradead.org; Mon, 07 Aug 2017 15:54:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  7 Aug 2017 15:54:45 +0200
Message-Id: <20170807135447.11161-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: imx: fix phyBOARD-Zeta pinfunc typo
To: barebox@lists.infradead.org

This has been resolved upstream, now the barebox private DTs need
to follow.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx7d-pba-c-09.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx7d-pba-c-09.dtsi b/arch/arm/dts/imx7d-pba-c-09.dtsi
index c5e77a707290..7106d6bfd735 100644
--- a/arch/arm/dts/imx7d-pba-c-09.dtsi
+++ b/arch/arm/dts/imx7d-pba-c-09.dtsi
@@ -123,7 +123,7 @@
 
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO00__WDOD1_WDOG_B	0x74
+			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x74
 		>;
 	};
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
