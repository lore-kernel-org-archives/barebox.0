Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAcm-0001VF-Fu
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 08:53:26 +0000
Received: from brom.techweek.pengutronix.de (unknown [185.66.195.81])
 by lynxeye.de (Postfix) with ESMTPA id 7EF63E7414D
 for <barebox@lists.infradead.org>; Fri,  7 Jun 2019 10:52:47 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  7 Jun 2019 10:50:13 +0200
Message-Id: <20190607085013.16134-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx6sx-sdb: remove PHY reset GPIO from DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

The board file already has a more sophisticated PHY reset sequence,
so there is no need to do it in the driver.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6sx-sdb.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6sx-sdb.dts b/arch/arm/dts/imx6sx-sdb.dts
index 18d873ccf21e..8cf412a39f75 100644
--- a/arch/arm/dts/imx6sx-sdb.dts
+++ b/arch/arm/dts/imx6sx-sdb.dts
@@ -19,6 +19,10 @@
 	};
 };
 
+&fec1 {
+	/delete-property/ phy-reset-gpios;
+};
+
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x620 &fec2 0x632>;
 };
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
