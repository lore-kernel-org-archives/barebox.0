Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuOy-0006uL-OC
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:45:18 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:45:10 +0200
Message-Id: <20200928144514.14398-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200928144514.14398-1-a.fatoum@pengutronix.de>
References: <20200928144514.14398-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 06/10] ARM: dts: stm32mp: setup syscon-reboot-mode on TAMP
 general purpose register
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the reboot mode infrastructure in place, lets add the first in-tree
user. The STM32MP1 SoCs have general purpose registers in the TAMP
peripheral. Register 20 there is used by the vendor's U-Boot for storing
a forced boot mode. We will use the same location for our reboot mode.
Consistency between barebox and OS is maintained by having barebox fixup
the device tree with the same reboot mode information it used itself, so
we are free to choose our own mode identifiers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index cc2540047591..ca11492de564 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -28,6 +28,7 @@
 		pwm15 = &{/soc/timer@44006000/pwm};
 		pwm16 = &{/soc/timer@44007000/pwm};
 		pwm17 = &{/soc/timer@44008000/pwm};
+		tamp.reboot_mode = &reboot_mode_tamp;
 	};
 
 };
@@ -42,6 +43,20 @@
 		compatible = "st,stm32mp1-ddr";
 		reg = <0x5a003000 0x1000>;
 	};
+
+	tamp@5c00a000 {
+		compatible = "simple-bus", "syscon", "simple-mfd";
+		reg = <0x5c00a000 0x400>;
+
+		reboot_mode_tamp: reboot-mode {
+			compatible = "syscon-reboot-mode";
+			offset = <0x150>; /* reg20 */
+			mask = <0xff>;
+			mode-normal = <0>;
+			mode-loader = <0xBB>;
+			mode-recovery = <0xBC>;
+		};
+	};
 };
 
 &bsec {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
