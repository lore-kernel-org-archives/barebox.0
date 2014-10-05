Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XarZJ-0000WB-5W
 for barebox@lists.infradead.org; Sun, 05 Oct 2014 19:34:09 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id A6C9326C2002
 for <barebox@lists.infradead.org>; Sun,  5 Oct 2014 21:33:12 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  5 Oct 2014 21:39:43 +0200
Message-Id: <1412537983-5337-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412537983-5337-1-git-send-email-dev@lynxeye.de>
References: <1412537983-5337-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: tegra124: add environment path to Jetson-TK1 DT
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra124-jetson-tk1.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index 16082c0..32e41f9 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -12,6 +12,13 @@
 		rtc1 = "/rtc@0,7000e000";
 	};
 
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &emmc, "partname:boot1";
+		};
+	};
+
 	memory {
 		reg = <0x0 0x80000000 0x0 0x80000000>;
 	};
@@ -1630,7 +1637,7 @@
 	};
 
 	/* eMMC */
-	sdhci@0,700b0600 {
+	emmc: sdhci@0,700b0600 {
 		status = "okay";
 		bus-width = <8>;
 		non-removable;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
