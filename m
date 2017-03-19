Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cpdvW-00023g-Kg
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 16:43:32 +0000
Received: from tellur.intern.lynxeye.de.fritz.box (a89-183-7-62.net-htp.de
 [89.183.7.62]) by lynxeye.de (Postfix) with ESMTPA id 44E82E743CD
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 17:31:55 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 19 Mar 2017 17:31:49 +0100
Message-Id: <20170319163151.13403-1-dev@lynxeye.de>
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
Subject: [PATCH 1/3] ARM: tegra: jetson-tk1: adapt internal DT paths to
 changed upstream DT
To: barebox@lists.infradead.org

The upstream DT changed the node names, so the barebox internal
references didn't work anymore.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra124-jetson-tk1.dts | 2 +-
 arch/arm/dts/tegra124.dtsi           | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index 26f405c..e1974db 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -12,6 +12,6 @@
 	};
 
 	/* eMMC */
-	emmc: sdhci@0,700b0600 {
+	emmc: sdhci@700b0600 {
 	};
 };
diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
index 9276f2f..8af3a58 100644
--- a/arch/arm/dts/tegra124.dtsi
+++ b/arch/arm/dts/tegra124.dtsi
@@ -1,8 +1,8 @@
 / {
 	aliases {
-		mmc0 = "/sdhci@0,700b0000/";
-		mmc1 = "/sdhci@0,700b0200/";
-		mmc2 = "/sdhci@0,700b0400/";
-		mmc3 = "/sdhci@0,700b0600/";
+		mmc0 = "/sdhci@700b0000/";
+		mmc1 = "/sdhci@700b0200/";
+		mmc2 = "/sdhci@700b0400/";
+		mmc3 = "/sdhci@700b0600/";
 	};
 };
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
