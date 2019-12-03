Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Xj-0008Nm-KW
 for barebox@lists.infradead.org; Tue, 03 Dec 2019 13:48:45 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 3 Dec 2019 14:48:41 +0100
Message-Id: <1575380921-160915-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] ARM: dts: imx6qdl: phycore: Remove emmc vmmc-supply
To: barebox@lists.infradead.org

There is no driver for the eMMC's vmmc-supply regulator in the barebox.
Use a dummy regulator instead by simply deleting the vmmc-supply
property.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 69f252b42382..974e271f453d 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -112,6 +112,7 @@
 };
 
 &usdhc4 {
+	/delete-property/ vmmc-supply;
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
