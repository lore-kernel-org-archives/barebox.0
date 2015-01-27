Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YG4Hs-0002CY-4i
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 11:26:29 +0000
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Tue, 27 Jan 2015 14:25:22 +0300
Message-ID: <1422357922-12241-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH v2] dts:imx6:pfla02: Align nand partitions by 512k
To: barebox@lists.infradead.org
Cc: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

NAND chip used on phyFLEX-i.MX6 with 4GB NAND (MT29F32G08AFACAWP) has
512k eraseblock size.

Align NAND partitions by 512k to fix erase fails.

Also increase barebox-environment and oftree partitions to be two
eraseblocks. This will ensure safety in case of bad block.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 32ce088fee48..2219ab43ff9f 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -95,22 +95,22 @@
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x400000 0x20000>;
+		reg = <0x400000 0x100000>;
 	};
 
 	partition@2 {
 		label = "oftree";
-		reg = <0x420000 0x20000>;
+		reg = <0x500000 0x100000>;
 	};
 
 	partition@3 {
 		label = "kernel";
-		reg = <0x440000 0x800000>;
+		reg = <0x600000 0x800000>;
 	};
 
 	partition@4 {
 		label = "root";
-		reg = <0xC40000 0x0>;
+		reg = <0xe00000 0x0>;
 	};
 };
 
-- 
2.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
