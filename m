Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3cDD-0008D1-LW
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 09:29:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0007wv-BV
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0002Mk-24
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu,  6 Aug 2020 11:29:17 +0200
Message-Id: <20200806092919.1892-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX6 dtsi: add enet_out clock
To: barebox@lists.infradead.org

The barebox fec driver supports enet_clk out since commit 2de277264c
("i.MX: fec: Enable all clocks specified for FEC") but unfortunately
this clock is not specified upstream. Enable it here till we can use it
from upstream to make it clear that IMX6QDL_CLK_ENET_REF should be used
as enet_out clock.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6qdl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 828be9ce0d..9d37133bbf 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -8,3 +8,11 @@
 		ipu0 = &ipu1;
 	};
 };
+
+&fec {
+	clocks = <&clks IMX6QDL_CLK_ENET>,
+		 <&clks IMX6QDL_CLK_ENET>,
+		 <&clks IMX6QDL_CLK_ENET_REF>;
+		 <&clks IMX6QDL_CLK_ENET_REF>;
+	clock-names = "ipg", "ahb", "ptp", "enet_out";
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
