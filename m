Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dy3X6-0006MA-Me
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 22:13:22 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 30 Sep 2017 00:12:45 +0200
Message-Id: <20170929221245.8653-2-linux@rempel-privat.de>
In-Reply-To: <20170929221245.8653-1-linux@rempel-privat.de>
References: <20170929221245.8653-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/2] MIPS: dts: ar9344: add pll node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
index 3e105174d..0a7171b8d 100644
--- a/arch/mips/dts/ar9344.dtsi
+++ b/arch/mips/dts/ar9344.dtsi
@@ -13,6 +13,7 @@
 		cpu@0 {
 			device_type = "cpu";
 			compatible = "mips,mips74Kc";
+			clocks = <&pll ATH79_CLK_CPU>;
 			reg = <0>;
 		};
 	};
@@ -47,6 +48,16 @@
 				status = "disabled";
 			};
 
+			pll: pll-controller@18050000 {
+				compatible = "qca,ar9344-pll";
+				reg = <0x18050000 0x100>;
+
+				clocks = <&ref>;
+				clock-names = "ref";
+
+				#clock-cells = <1>;
+			};
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
