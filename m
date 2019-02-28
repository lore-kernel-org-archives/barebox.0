Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzF3p-0003gh-Vq
 for barebox@lists.infradead.org; Thu, 28 Feb 2019 06:20:51 +0000
Received: by mail-pl1-x634.google.com with SMTP id g37so6419714plb.5
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2019 22:20:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Feb 2019 22:20:32 -0800
Message-Id: <20190228062033.8937-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] fixup! ARM: imx8mq-zii-ultra: Enable PCIE1 and PCIE2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index d46a26d81..0c124a5ec 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -272,15 +272,14 @@
 	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
 	status = "okay";
 
-	pcie@0,0 {
-		reg = <0x000000 0 0 0 0>;
+	host@0 {
+		reg = <0 0 0 0 0>;
 
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		/* pcie endpoint 01:00.0 */
-		eth1: intel,i210@pcie0,0 {
-			reg = <0x010000 0 0 0 0>;
+		i210: i210@0 {
+			reg = <0 0 0 0 0>;
 		};
 	};
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
