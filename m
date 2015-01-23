Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEcjp-0006qn-He
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 11:49:22 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1YEcjT-0000OB-HS
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 14:48:59 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Fri, 23 Jan 2015 14:48:55 +0300
Message-ID: <1422013735-19774-1-git-send-email-d.lavnikevich@sam-solutions.com>
In-Reply-To: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: [PATCH 2/2] dts:imx6:pfla02: Align nand partitions by 512k
To: barebox@lists.infradead.org
Cc: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>

NAND chip used on phyFLEX-i.MX6 with 4GB NAND (MT29F32G08AFACAWP) has
512k eraseblock size.

Align NAND partitions by 512k to fix erase fails.

Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 32ce088fee48..52b279057a33 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -95,22 +95,22 @@
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x400000 0x20000>;
+		reg = <0x400000 0x80000>;
 	};
 
 	partition@2 {
 		label = "oftree";
-		reg = <0x420000 0x20000>;
+		reg = <0x480000 0x80000>;
 	};
 
 	partition@3 {
 		label = "kernel";
-		reg = <0x440000 0x800000>;
+		reg = <0x500000 0x800000>;
 	};
 
 	partition@4 {
 		label = "root";
-		reg = <0xC40000 0x0>;
+		reg = <0xD00000 0x0>;
 	};
 };
 
-- 
2.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
