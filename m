Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXkT-0008O0-FV
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 07:25:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Apr 2020 09:25:06 +0200
Message-Id: <20200401072506.2226-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] arm: rk3288-phycore-som: Fix memory node
To: Barebox List <barebox@lists.infradead.org>

Upstream arm/rk3288.dtsi specifies #address-cells = <2> and #size-cells
= <2> for the root node, so we have to use 64bit addresses and sizes in
the memory node as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3288-phycore-som.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/rk3288-phycore-som.dts b/arch/arm/dts/rk3288-phycore-som.dts
index dd74bcfb11..65c53895c4 100644
--- a/arch/arm/dts/rk3288-phycore-som.dts
+++ b/arch/arm/dts/rk3288-phycore-som.dts
@@ -21,7 +21,7 @@
 	compatible = "phytec,rk3288-phycore-som", "rockchip,rk3288";
 
 	memory {
-		reg = <0 0x40000000>;
+		reg = <0x0 0x0 0x0 0x40000000>;
 	};
 
 	vcc33: fixedregulator@0 {
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
