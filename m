Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cpdvW-00023h-Kr
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 16:43:33 +0000
Received: from tellur.intern.lynxeye.de.fritz.box (a89-183-7-62.net-htp.de
 [89.183.7.62]) by lynxeye.de (Postfix) with ESMTPA id 9FDD0E743CE
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 17:31:55 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 19 Mar 2017 17:31:50 +0100
Message-Id: <20170319163151.13403-2-dev@lynxeye.de>
In-Reply-To: <20170319163151.13403-1-dev@lynxeye.de>
References: <20170319163151.13403-1-dev@lynxeye.de>
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
Subject: [PATCH 2/3] ARM: tegra124: use old XUSB binding
To: barebox@lists.infradead.org

The XUSB binding was changed upstream, to allow for more flexibility
needed to support USB3. The barebox driver has not been adapted to
this change. Add back the old DT properties in the Barebox internal
DT to keep the existing PCIe functionality working.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra124.dtsi | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
index 8af3a58..ce618db 100644
--- a/arch/arm/dts/tegra124.dtsi
+++ b/arch/arm/dts/tegra124.dtsi
@@ -1,3 +1,5 @@
+#include <dt-bindings/pinctrl/pinctrl-tegra-xusb.h>
+
 / {
 	aliases {
 		mmc0 = "/sdhci@700b0000/";
@@ -5,4 +7,36 @@
 		mmc2 = "/sdhci@700b0400/";
 		mmc3 = "/sdhci@700b0600/";
 	};
+
+	pcie-controller@01003000 {
+		phys = <&padctl TEGRA_XUSB_PADCTL_PCIE>;
+		phy-names = "pcie";
+	};
+
+	padctl@7009f000 {
+		pinctrl-0 = <&padctl_default>;
+		pinctrl-names = "default";
+		#phy-cells = <1>;
+
+		padctl_default: pinmux {
+			usb3 {
+				nvidia,lanes = "pcie-0", "pcie-1";
+				nvidia,function = "usb3";
+				nvidia,iddq = <0>;
+			};
+
+			pcie {
+				nvidia,lanes = "pcie-2", "pcie-3",
+				               "pcie-4";
+				nvidia,function = "pcie";
+				nvidia,iddq = <0>;
+			};
+
+			sata {
+				nvidia,lanes = "sata-0";
+				nvidia,function = "sata";
+				nvidia,iddq = <0>;
+			};
+		};
+	};
 };
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
