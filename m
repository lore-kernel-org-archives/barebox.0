Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsmr-0000rw-1r
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:47:26 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id D7BA326C2002
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:14 +0100
Message-Id: <1425411983-24732-2-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/11] ARM: tegra20: add mmc aliases
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-colibri.dtsi | 1 +
 arch/arm/dts/tegra20.dtsi         | 9 ++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/tegra20-colibri.dtsi b/arch/arm/dts/tegra20-colibri.dtsi
index 96da8a4..e931c07 100644
--- a/arch/arm/dts/tegra20-colibri.dtsi
+++ b/arch/arm/dts/tegra20-colibri.dtsi
@@ -1 +1,2 @@
 #include <arm/tegra20-colibri-512.dtsi>
+#include "tegra20.dtsi"
diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index ce7d322..995eee4 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -1 +1,8 @@
-#include <arm/tegra20.dtsi>
+/ {
+	aliases {
+		mmc0 = "/sdhci@c8000000/";
+		mmc1 = "/sdhci@c8000200/";
+		mmc2 = "/sdhci@c8000400/";
+		mmc3 = "/sdhci@c8000600/";
+	};
+};
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
