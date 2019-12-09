Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEvc-0001H9-Kq
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:02:06 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Mon, 9 Dec 2019 10:01:46 +0100
Message-Id: <1575882108-108853-5-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
References: <1575882108-108853-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 5/7] ARM: dts: imx6: phycard: Use partname for environment
 device-path
To: barebox@lists.infradead.org

Change environment device-path from using a separate label to
referencing a device plus partname.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
index 78fc0c719637..c28076294092 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi
@@ -11,13 +11,13 @@
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
-			device-path = &environment_nand;
+			device-path = &gpmi, "partname:barebox-environment";
 			status = "disabled";
 		};
 
 		environment-sd3 {
 			compatible = "barebox,environment";
-			device-path = &environment_usdhc3;
+			device-path = &usdhc3, "partname:barebox-environment";
 			status = "disabled";
 		};
 	};
@@ -46,7 +46,7 @@
 			reg = <0x0 0x400000>;
 		};
 
-		environment_nand: partition@400000 {
+		partition@400000 {
 			label = "barebox-environment";
 			reg = <0x400000 0x20000>;
 		};
@@ -168,7 +168,8 @@
 		label = "barebox";
 		reg = <0x0 0xe0000>;
 	};
-	environment_usdhc3: partition@e0000 {
+
+	partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
 	};
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
