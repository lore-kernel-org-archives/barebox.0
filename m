Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward19o.cmail.yandex.net ([37.9.109.217])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a76mL-0005WQ-1o
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 19:21:26 +0000
Received: from smtp2o.mail.yandex.net (smtp2o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::26])
 by forward19o.cmail.yandex.net (Yandex) with ESMTP id 51FA021216
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2015 22:20:59 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Thu, 10 Dec 2015 22:20:12 +0300
Message-Id: <1449775212-17571-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH] ARM: i.MX6Q: Embedsky E9: Convert environment paths in DTS to
 a new bindings
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/dts/imx6q-embedsky-e9.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
index 4514d4e..726d620 100644
--- a/arch/arm/dts/imx6q-embedsky-e9.dts
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -22,13 +22,13 @@
 
 		environment-mmc1 {
 			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
+			device-path = &environment_mmc1;
 			status = "disabled";
 		};
 
 		environment-mmc3 {
 			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
+			device-path = &environment_mmc3;
 			status = "disabled";
 		};
 
@@ -43,7 +43,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	environment_mmc1: partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
@@ -57,7 +57,7 @@
 		label = "barebox";
 		reg = <0x0 0x80000>;
 	};
-	partition@1 {
+	environment_mmc3: partition@1 {
 		label = "barebox-environment";
 		reg = <0x80000 0x80000>;
 	};
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
