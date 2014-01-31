Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0e-0001Gg-At
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:15 +0100
Message-Id: <1391178204-20889-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/15] ARM: dts: Add i.MX25 Karo TX25 dts
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile            |  1 +
 arch/arm/dts/imx25-karo-tx25.dts | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 arch/arm/dts/imx25-karo-tx25.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ecfa5d9..07508e3 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -2,6 +2,7 @@ dtb-$(CONFIG_ARCH_AM33XX) += \
 	am335x-bone.dtb \
 	am335x-boneblack.dtb \
 	am335x-phytec-phycore.dtb
+dtb-$(CONFIG_ARCH_IMX25) += imx25-karo-tx25.dtb
 dtb-$(CONFIG_ARCH_IMX27) += imx27-phytec-phycard-s-rdk.dtb \
 	imx27-phytec-phycard-s-som.dtb
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
new file mode 100644
index 0000000..f8db366
--- /dev/null
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -0,0 +1,36 @@
+/*
+ * Copyright 2012 Sascha Hauer, Pengutronix
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx25.dtsi"
+
+/ {
+	model = "Ka-Ro TX25";
+	compatible = "karo,imx25-tx25", "fsl,imx25";
+
+	memory {
+		reg = <0x80000000 0x02000000 0x90000000 0x02000000>;
+	};
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&fec {
+	phy-mode = "rmii";
+	status = "okay";
+};
+
+&nfc {
+	nand-on-flash-bbt;
+	status = "okay";
+};
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
