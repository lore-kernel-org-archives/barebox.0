Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XarZJ-0000WA-5w
 for barebox@lists.infradead.org; Sun, 05 Oct 2014 19:34:09 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 3E04E26C2001
 for <barebox@lists.infradead.org>; Sun,  5 Oct 2014 21:33:12 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  5 Oct 2014 21:39:42 +0200
Message-Id: <1412537983-5337-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: tegra30: add environment path to Beaver DT
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 35b4d7e..94955f9 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -11,6 +11,13 @@
 		rtc1 = "/rtc@7000e000";
 	};
 
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &emmc, "partname:boot1";
+		};
+	};
+
 	memory {
 		reg = <0x80000000 0x7ff00000>;
 	};
@@ -750,7 +757,7 @@
 		bus-width = <4>;
 	};
 
-	sdhci@78000600 {
+	emmc: sdhci@78000600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
