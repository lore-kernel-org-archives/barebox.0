Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004mk-Q1
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:35:01 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:51 +0200
Message-Id: <20200820073454.17500-10-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 09/12] ARM: dts: protonic: add fixed clock for the FEC node
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add fixed clock for the FEC nodes to workaround HW TX checksum issues in
case a PHY is used as the clock source for RMII connection.

By default the FEC node is using 3 clock sources, one of which is named
"ptp" clock. If ptp clock has same source as "enet_ref" clock, then the
ENET_REF_CLK input will become output. See [1].

The default configuration will work only if iMX is the clock provider
for the PHY chip. In case PHY has own XTAL, then the PHY should be used as
clock provider for the iMX/FEC.

In case "ptp" clock is removed, the PHY clock will be used and most of
communication will work as expected. But will trigger other issue - the
HW generated checksums for UDP and TCP packets will be zero. It is
kernel specific issue, not reproducible on barebox.

Since, currently, most of PHY drivers are not defined as clock provider, we
should define dummy fixed clock and use it. This workaround is used in
some other devicetrees [2]. But it may imply the next hidden issue - the
PHY can be suspended, reseted or reconfigured any time and this may add
clock glitches on the ENET_REF_CLK line and put FEC in undefined state.

[1] https://elixir.bootlin.com/linux/latest/source/arch/arm/mach-imx/mach-imx6q.c#L164
[2] https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/imx6dl-eckelmann-ci4x10.dts#L300

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-lanmcu.dts | 11 +++++++++--
 arch/arm/dts/imx6dl-plym2m.dts | 11 +++++++++--
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index 06d47bdc0d..65f6cbf395 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -97,6 +97,12 @@
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	clk50m_phy: phy_clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+	};
 };
 
 &iomuxc {
@@ -304,8 +310,9 @@
 	phy-mode = "rmii";
 	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
-		 <&clks IMX6QDL_CLK_ENET>;
-	clock-names = "ipg", "ahb";
+		 <&clks IMX6QDL_CLK_ENET>,
+		 <&clk50m_phy>;
+	clock-names = "ipg", "ahb", "ptp";
 	status = "okay";
 };
 
diff --git a/arch/arm/dts/imx6dl-plym2m.dts b/arch/arm/dts/imx6dl-plym2m.dts
index 335cb6f342..d04137e282 100644
--- a/arch/arm/dts/imx6dl-plym2m.dts
+++ b/arch/arm/dts/imx6dl-plym2m.dts
@@ -27,6 +27,12 @@
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	clk50m_phy: phy_clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <50000000>;
+	};
 };
 
 &ecspi1 {
@@ -50,8 +56,9 @@
 	phy-mode = "rmii";
 	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
-		 <&clks IMX6QDL_CLK_ENET>;
-	clock-names = "ipg", "ahb";
+		 <&clks IMX6QDL_CLK_ENET>,
+		 <&clk50m_phy>;
+	clock-names = "ipg", "ahb", "ptp";
 	status = "okay";
 };
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
