Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004mp-Q2
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:35:00 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:52 +0200
Message-Id: <20200820073454.17500-11-o.rempel@pengutronix.de>
In-Reply-To: <20200820073454.17500-1-o.rempel@pengutronix.de>
References: <20200820073454.17500-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 10/12] ARM: dts: protonic: lanmcu: use UART_CTS instead of
 GPIO based CTS
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Sync it with Protonic PLYBAS board to have same, reproducible behavior
on all boards.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-lanmcu.dts | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index 65f6cbf395..42f8c91ece 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -201,7 +201,7 @@
 			fsl,pins = <
 				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
 				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
-				MX6QDL_PAD_EIM_D28__GPIO3_IO28		0x130b1
+				MX6QDL_PAD_EIM_D28__UART2_CTS_B		0x130b1
 			>;
 		};
 
@@ -209,7 +209,7 @@
 			fsl,pins = <
 				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
 				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
-				MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x130b1
+				MX6QDL_PAD_EIM_D30__UART3_CTS_B		0x130b1
 			>;
 		};
 
@@ -320,7 +320,6 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart2>;
 	linux,rs485-enabled-at-boot-time;
-	rts-gpios = <&gpio3 28 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
@@ -328,7 +327,6 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart3>;
 	linux,rs485-enabled-at-boot-time;
-	rts-gpios = <&gpio3 30 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
