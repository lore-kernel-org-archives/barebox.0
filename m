Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEbrO-0002B0-A6
 for barebox@lists.infradead.org; Thu, 11 Apr 2019 15:43:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hEbrK-0005J8-OR
 for barebox@lists.infradead.org; Thu, 11 Apr 2019 17:43:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 11 Apr 2019 17:43:26 +0200
Message-Id: <20190411154326.1750-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx8mq: link PCIE1 and PCIE2 power domains
To: barebox@lists.infradead.org

Those two power domains can only be used together. The link between
the two has been dropped with the dts merge of v5.1-rc1. Fix this.

Fortunately the i.MX8MQ PCIe support will land in Linux 5.2, so we
can drop all those PCIe related local DT overrides with the next big
dts upstream sync.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx8mq.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index d1d8bdaa0ee1..1d596152383f 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -198,3 +198,7 @@
 			       <25000000>,
 			       <125000000>;
 };
+
+&pgc_pcie1 {
+	power-domains = <&pgc_pcie2>;
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
