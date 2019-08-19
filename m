Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeTG-0007s9-RI
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 10:01:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTB-0003n6-5r
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:57 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTA-0008Ph-SI
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:56 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 19 Aug 2019 12:00:48 +0200
Message-Id: <20190819100049.6053-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
References: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: Arria10: achilles: add named partitions
To: Barebox List <barebox@lists.infradead.org>

Add labels for the barebox1/2 and bitstream1/2 partitions.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 585ac20e1e0a..4c6460fb60aa 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -226,6 +226,27 @@
 		compatible = "fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
+
+		barebox1_xload: partition@100000 {
+			label = "barebox1-xload";
+			reg = <0x100000 0x40000>;
+		};
+
+		barebox2_xload: partition@140000 {
+			label = "barebox2-xload";
+			reg = <0x140000 0x40000>;
+		};
+
+		barebox1: partition@200000 {
+			label = "barebox1";
+			reg = <0x200000 0x80000>;
+		};
+
+		barebox2: partition@280000 {
+			label = "barebox2";
+			reg = <0x280000 0x80000>;
+		};
+
 		environment_mmc: partition@300000 {
 			label = "environment";
 			reg = <0x300000 0x8000>;
@@ -235,6 +256,17 @@
 			label = "state";
 			reg = <0x400000 0x8000>;
 		};
+
+		bitstream1: partition@700000 {
+			label = "bitstream1";
+			reg = <0x700000 0x2000000>;
+		};
+
+		bitstream2: partition@2700000 {
+			label = "bitstream2";
+			reg = <0x2700000 0x2000000>;
+		};
+
 	};
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
