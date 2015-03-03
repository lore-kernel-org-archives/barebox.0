Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsmq-0000sD-LD
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:47:26 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 4515D26C2003
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:28 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:15 +0100
Message-Id: <1425411983-24732-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
References: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 03/11] ARM: tegra30: add mmc aliases
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 1 +
 arch/arm/dts/tegra30.dtsi       | 8 ++++++++
 2 files changed, 9 insertions(+)
 create mode 100644 arch/arm/dts/tegra30.dtsi

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 5879353..91e1354 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -1,6 +1,7 @@
 /dts-v1/;
 
 #include <arm/tegra30.dtsi>
+#include "tegra30.dtsi"
 
 / {
 	model = "NVIDIA Tegra30 Beaver evaluation board";
diff --git a/arch/arm/dts/tegra30.dtsi b/arch/arm/dts/tegra30.dtsi
new file mode 100644
index 0000000..90bd08b
--- /dev/null
+++ b/arch/arm/dts/tegra30.dtsi
@@ -0,0 +1,8 @@
+/ {
+	aliases {
+		mmc0 = "/sdhci@78000000/";
+		mmc1 = "/sdhci@78000200/";
+		mmc2 = "/sdhci@78000400/";
+		mmc3 = "/sdhci@78000600/";
+	};
+};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
