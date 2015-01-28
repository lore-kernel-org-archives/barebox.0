Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGN6U-0008RK-0e
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:31:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D7A77A0035F
 for <barebox@lists.infradead.org>; Wed, 28 Jan 2015 08:32:13 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 28 Jan 2015 08:30:28 +0100
Message-Id: <1422430228-15758-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] imx6: add partitions on SPI NOR for PFLA02
To: barebox@lists.infradead.org

Add partitions oftree and kernel on SPI NOR and increase size of barebox and
barebox-environment partition.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 32ce088..e2343bf 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -48,14 +48,23 @@
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x80000>;
+			reg = <0x0 0x100000>;
 		};
 
 		partition@1 {
 			label = "barebox-environment";
-			reg = <0x80000 0x10000>;
+			reg = <0x100000 0x20000>;
 		};
 
+		partition@2 {
+			label = "oftree";
+			reg = <0x120000 0x20000>;
+		};
+
+		partition@3 {
+			label = "kernel";
+			reg = <0x140000 0x0>;
+		};
 	};
 };
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
