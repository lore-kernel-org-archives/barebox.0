Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsPSv-0005UJ-Ns
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 08:25:53 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu, 14 Sep 2017 10:25:09 +0200
Message-Id: <20170914082509.23583-11-linux@rempel-privat.de>
In-Reply-To: <20170914082509.23583-1-linux@rempel-privat.de>
References: <20170914082509.23583-1-linux@rempel-privat.de>
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
Subject: [PATCH v3 10/10] MIPS: dts: ar9344: add APB bus
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

and move nodes which belong to APB.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344.dtsi | 42 +++++++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/arch/mips/dts/ar9344.dtsi b/arch/mips/dts/ar9344.dtsi
index 858751112..3e105174d 100644
--- a/arch/mips/dts/ar9344.dtsi
+++ b/arch/mips/dts/ar9344.dtsi
@@ -29,15 +29,33 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		uart0: uart@18020000 {
-			compatible = "ns16550a", "qca,ar9344-uart0";
-			reg = <0x18020000 0x20>;
+		apb {
+			compatible = "simple-bus";
+			ranges;
 
-			reg-shift = <2>;
-			reg-io-width = <4>;
-			big-endian;
+			#address-cells = <1>;
+			#size-cells = <1>;
 
-			status = "disabled";
+			uart0: uart@18020000 {
+				compatible = "ns16550a", "qca,ar9344-uart0";
+				reg = <0x18020000 0x20>;
+
+				reg-shift = <2>;
+				reg-io-width = <4>;
+				big-endian;
+
+				status = "disabled";
+			};
+
+			spi: spi@1f000000 {
+				compatible = "qca,ar7100-spi", "qca,ar9344-spi";
+				reg = <0x1f000000 0x1c>;
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				status = "disabled";
+			};
 		};
 
 		mac0: mac@19000000 {
@@ -49,15 +67,5 @@
 
 			status = "disabled";
 		};
-
-		spi: spi@1f000000 {
-			compatible = "qca,ar7100-spi", "qca,ar9344-spi";
-			reg = <0x1f000000 0x1c>;
-
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			status = "disabled";
-		};
 	};
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
