Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw2p-00074u-Ut
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:54:09 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id A723518B4266
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:57:01 +0100
Message-Id: <1386100622-8498-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 7/8] dts: tegra: add SDMMC nodes
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20.dtsi | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index f63ead8..2b333f5 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -46,4 +46,36 @@
 		compatible = "nvidia,tegra20-pmc";
 		reg = <0x7000e400 0x400>;
 	};
+
+	sdhci@c8000000 {
+		compatible = "nvidia,tegra20-sdhci";
+		reg = <0xc8000000 0x200>;
+		interrupts = <0 14 0x04>;
+		clocks = <&tegra_car 14>;
+		status = "disabled";
+	};
+
+	sdhci@c8000200 {
+		compatible = "nvidia,tegra20-sdhci";
+		reg = <0xc8000200 0x200>;
+		interrupts = <0 15 0x04>;
+		clocks = <&tegra_car 9>;
+		status = "disabled";
+	};
+
+	sdhci@c8000400 {
+		compatible = "nvidia,tegra20-sdhci";
+		reg = <0xc8000400 0x200>;
+		interrupts = <0 19 0x04>;
+		clocks = <&tegra_car 69>;
+		status = "disabled";
+	};
+
+	sdhci@c8000600 {
+		compatible = "nvidia,tegra20-sdhci";
+		reg = <0xc8000600 0x200>;
+		interrupts = <0 31 0x04>;
+		clocks = <&tegra_car 15>;
+		status = "disabled";
+	};
 };
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
