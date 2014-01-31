Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GK-Tk
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:23:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:17 +0100
Message-Id: <1391178204-20889-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/15] ARM: dts: Karo TX25: Add pinctrl nodes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx25-karo-tx25.dts | 53 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm/dts/imx25-karo-tx25.dts b/arch/arm/dts/imx25-karo-tx25.dts
index f8db366..aeb1fce 100644
--- a/arch/arm/dts/imx25-karo-tx25.dts
+++ b/arch/arm/dts/imx25-karo-tx25.dts
@@ -21,16 +21,69 @@
 	};
 };
 
+&iomuxc {
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX25_PAD_UART1_TXD__UART1_TXD 0x80000000
+			MX25_PAD_UART1_RXD__UART1_RXD 0x80000000
+			MX25_PAD_UART1_CTS__UART1_CTS 0x80000000
+			MX25_PAD_UART1_RTS__UART1_RTS 0x80000000
+		>;
+	};
+
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX25_PAD_D11__GPIO_4_9		0x80000000 /* FEC PHY power on pin */
+			MX25_PAD_D13__GPIO_4_7		0x80000000 /* FEC reset */
+			MX25_PAD_FEC_MDC__FEC_MDC	0x80000000
+			MX25_PAD_FEC_MDIO__FEC_MDIO	0x80000000
+			MX25_PAD_FEC_TDATA0__FEC_TDATA0	0x80000000
+			MX25_PAD_FEC_TDATA1__FEC_TDATA1	0x80000000
+			MX25_PAD_FEC_TX_EN__FEC_TX_EN	0x80000000
+			MX25_PAD_FEC_RDATA0__FEC_RDATA0	0x80000000
+			MX25_PAD_FEC_RDATA1__FEC_RDATA1	0x80000000
+			MX25_PAD_FEC_RX_DV__FEC_RX_DV	0x80000000
+			MX25_PAD_FEC_TX_CLK__FEC_TX_CLK	0x80000000
+		>;
+	};
+
+	pinctrl_nfc: nfcgrp {
+		fsl,pins = <
+			MX25_PAD_NF_CE0__NF_CE0		0x80000000
+			MX25_PAD_NFWE_B__NFWE_B		0x80000000
+			MX25_PAD_NFRE_B__NFRE_B		0x80000000
+			MX25_PAD_NFALE__NFALE		0x80000000
+			MX25_PAD_NFCLE__NFCLE		0x80000000
+			MX25_PAD_NFWP_B__NFWP_B		0x80000000
+			MX25_PAD_NFRB__NFRB		0x80000000
+			MX25_PAD_D7__D7			0x80000000
+			MX25_PAD_D6__D6			0x80000000
+			MX25_PAD_D5__D5			0x80000000
+			MX25_PAD_D4__D4			0x80000000
+			MX25_PAD_D3__D3			0x80000000
+			MX25_PAD_D2__D2			0x80000000
+			MX25_PAD_D1__D1			0x80000000
+			MX25_PAD_D0__D0			0x80000000
+		>;
+	};
+};
+
 &uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
 };
 
 &fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
 	phy-mode = "rmii";
 	status = "okay";
 };
 
 &nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nfc>;
 	nand-on-flash-bbt;
 	status = "okay";
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
