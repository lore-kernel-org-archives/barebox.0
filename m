Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNBk-0005du-F8
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 09:53:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Oct 2020 11:53:46 +0200
Message-Id: <20201005095346.27957-8-s.hauer@pengutronix.de>
In-Reply-To: <20201005095346.27957-1-s.hauer@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: dts: i.MX8MP: Add Cortex-M7 Coprocessor node
To: Barebox List <barebox@lists.infradead.org>

The i.MX8MQ has a Cortex-M7 Coprocessor. Add a node for controlling it.
To make use of it the board has to provide the reserved memory nodes,
for example:

reserved-memory {
       #address-cells = <2>;
       #size-cells = <2>;
       ranges;

       m7_reserved_sysmem1: rproc@40000000 {
               reg = <0 0x40000000 0 0x800000>;
               no-map;
       };

       m7_reserved_sysmem2: rproc@40800000 {
               reg = <0 0x40800000 0 0x800000>;
               no-map;
       };

       m7_reserved_sysmem3: rproc@80000000 {
               reg = <0 0x80000000 0 0x800000>;
               no-map;
       };
};

&remoteproc_cm7 {
       memory-region = <&m7_reserved_sysmem1>, <&m7_reserved_sysmem2>, <&m7_reserved_sysmem3>;
};

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx8mp-evk.dts | 1 +
 arch/arm/dts/imx8mp.dtsi    | 9 +++++++++
 2 files changed, 10 insertions(+)
 create mode 100644 arch/arm/dts/imx8mp.dtsi

diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index bb255e2c94..3264ade4b8 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <arm64/freescale/imx8mp-evk.dts>
+#include "imx8mp.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
new file mode 100644
index 0000000000..b251ebeada
--- /dev/null
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/ {
+	remoteproc_cm7: remoteproc-cm7 {
+		compatible = "fsl,imx8mp-cm7";
+		clocks = <&clk IMX8MP_CLK_M7_CORE>;
+		syscon = <&src>;
+	};
+};
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
