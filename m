Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axx-0003Kr-3x
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:29 +0100
Message-Id: <1389971012-22977-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/22] ARM: dts: phycard-i.MX27: Add environment and NAND
 partitioning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx27-phytec-phycard-s-som.dts | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/dts/imx27-phytec-phycard-s-som.dts b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
index c0341da..eba6240 100644
--- a/arch/arm/dts/imx27-phytec-phycard-s-som.dts
+++ b/arch/arm/dts/imx27-phytec-phycard-s-som.dts
@@ -19,6 +19,11 @@
 
 	chosen {
 		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &nfc, "partname:barebox-environment";
+		};
 	};
 
 	memory {
@@ -74,4 +79,24 @@
 	nand-ecc-mode = "hw";
 	nand-on-flash-bbt;
 	status = "okay";
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+
+	partition@2 {
+		label = "kernel";
+		reg = <0x100000 0x400000>;
+	};
+
+	partition@3 {
+		label = "root";
+		reg = <0x500000 0x7b00000>;
+	};
 };
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
