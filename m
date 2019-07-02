Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIRs-0002ol-09
 for barebox@lists.infradead.org; Tue, 02 Jul 2019 13:03:53 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 2 Jul 2019 15:03:49 +0200
Message-Id: <1562072630-54127-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 1/2] ARM: dts: imx6qdl: phycore: Set phy-reset-duration for fec
To: barebox@lists.infradead.org

The voltage of the ethernet phy needs to be stable before de-asserting
the reset pin. Thus set the phy-reset-duration to 10 ms.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 8fde27bd0c17..1d39368165db 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -110,6 +110,7 @@
 	phy-handle = <&ethphy>;
 	phy-mode = "rgmii";
 	phy-reset-gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <10>; /* in msecs */
 	status = "disabled";
 
 	mdio {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
