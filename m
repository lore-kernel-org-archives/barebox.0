Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihi3R-0002BE-5v
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 22:44:31 +0000
Received: from astat.fritz.box (a89-183-111-97.net-htp.de [89.183.111.97])
 by lynxeye.de (Postfix) with ESMTPA id 911C0E74222
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2019 23:43:53 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 18 Dec 2019 23:43:48 +0100
Message-Id: <20191218224349.107261-3-dev@lynxeye.de>
In-Reply-To: <20191218224349.107261-1-dev@lynxeye.de>
References: <20191218224349.107261-1-dev@lynxeye.de>
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
Subject: [PATCH 3/4] ARM: zynq: add QSPI DT node
To: barebox@lists.infradead.org

The node is not available in the upstream DT, yet. Add it
to the Barebox DT extensions.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/zynq-7000.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 arch/arm/dts/zynq-7000.dtsi

diff --git a/arch/arm/dts/zynq-7000.dtsi b/arch/arm/dts/zynq-7000.dtsi
new file mode 100644
index 000000000000..3791f743a47d
--- /dev/null
+++ b/arch/arm/dts/zynq-7000.dtsi
@@ -0,0 +1,15 @@
+
+&amba {
+	qspi: spi@e000d000 {
+		compatible = "xlnx,zynq-qspi-1.0";
+		reg = <0xe000d000 0x1000>;
+		interrupt-parent = <&intc>;
+		interrupts = <0 19 4>;
+		clocks = <&clkc 10>, <&clkc 43>;
+		clock-names = "ref_clk", "pclk";
+		status = "disabled";
+		
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
