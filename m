Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihi3R-0002BF-66
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 22:44:30 +0000
Received: from astat.fritz.box (a89-183-111-97.net-htp.de [89.183.111.97])
 by lynxeye.de (Postfix) with ESMTPA id C1E7AE74240
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2019 23:43:53 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 18 Dec 2019 23:43:49 +0100
Message-Id: <20191218224349.107261-4-dev@lynxeye.de>
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
Subject: [PATCH 4/4] ARM: zynq: zed: add QSPI flash support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c |  9 +++++++++
 arch/arm/dts/zynq-zed.dts                 | 18 ++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 9b90ef112b46..58f9e40d11c9 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -241,9 +241,18 @@ static void avnet_zedboard_ps7_init(void)
 	/* UART1 pinmux */
 	writel(0x000002E1, ZYNQ_MIO_BASE + 0xC8);
 	writel(0x000002E0, ZYNQ_MIO_BASE + 0xCC);
+	/* QSPI pinmux */
+	writel(0x00001602, ZYNQ_MIO_BASE + 0x04);
+	writel(0x00000702, ZYNQ_MIO_BASE + 0x08);
+	writel(0x00000702, ZYNQ_MIO_BASE + 0x0c);
+	writel(0x00000702, ZYNQ_MIO_BASE + 0x10);
+	writel(0x00000702, ZYNQ_MIO_BASE + 0x14);
+	writel(0x00000702, ZYNQ_MIO_BASE + 0x18);
+	writel(0x00000602, ZYNQ_MIO_BASE + 0x20);
 
 	/* poor mans clkctrl */
 	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
+	writel(0x00000101, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_LQSPI_CLK_CTRL);
 
 	/* GEM0 */
 	writel(0x00000001, 0xf8000138);
diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
index 52d68332499a..a6b1da854bc4 100644
--- a/arch/arm/dts/zynq-zed.dts
+++ b/arch/arm/dts/zynq-zed.dts
@@ -1,7 +1,25 @@
 #include <arm/zynq-zed.dts>
+#include "zynq-7000.dtsi"
 
 / {
 	chosen {
 		stdout-path = &uart1;
 	};
 };
+
+&qspi {
+	status = "okay";
+	num-cs = <1>;
+
+	qspi_flash: flash@0 {
+		compatible = "spansion,s25fl256s1", "jedec,spi-nor";
+		reg = <0>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+		spi-max-frequency = <50000000>;
+		m25p,fast-read;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
