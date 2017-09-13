Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds8T5-0000zQ-Op
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 14:16:48 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 13 Sep 2017 16:15:59 +0200
Message-Id: <20170913141606.14508-4-linux@rempel-privat.de>
In-Reply-To: <20170913141606.14508-1-linux@rempel-privat.de>
References: <20170913141606.14508-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 03/10] MIPS: dts: ar9344: add mac0 node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

this node is supported by ag71xx driver

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
index 0838e8d7f..858751112 100644
--- a/arch/mips/dts/ar9344.dtsi
+++ b/arch/mips/dts/ar9344.dtsi
@@ -40,6 +40,16 @@
 			status = "disabled";
 		};
 
+		mac0: mac@19000000 {
+			compatible = "qca,ar9344-gmac0";
+			reg = <0x18070000 0x00000100>,
+			      <0x19000000 0x01000000>;
+			reg-names = "gmac", "ge0";
+			phy-mode = "rgmii";
+
+			status = "disabled";
+		};
+
 		spi: spi@1f000000 {
 			compatible = "qca,ar7100-spi", "qca,ar9344-spi";
 			reg = <0x1f000000 0x1c>;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
