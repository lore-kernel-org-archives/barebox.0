Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrH-0007wX-23
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:35 +0200
Message-Id: <20200916135035.7089-11-a.fatoum@pengutronix.de>
In-Reply-To: <20200916135035.7089-1-a.fatoum@pengutronix.de>
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: dts: i.MX6qdl: define BootROM reboot-mode on top
 of SRC_GPR{9, 10}
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The SRC general purpose registers of the i.MX6 keep their values after a
warm reset and are used for communication between the BootROM and upper
level software.

SRC_GPR9 allows software override of SRC_SBMR1, e.g. to boot via
serial download protocol. Define a suitable syscon-reboot-mode
node to use it.

To have SRC_GPR9 take effect, bit 28 in SRC_GPR10 has to be set as well.
To support this, we use the backward-compatible barebox-specific binding
for having multiple 32-bit values for a single mode.

This node will _not_ be fixed up into the kernel device tree due to
the barebox-specific compatible, but as with all reboot mode storage,
the referenced locations will be cleared to the normal (here all-zero)
mode. User software that expects exclusive access to GPR9 while GPR10
bit 28 is zero will be broken.

Rebooting into serial download is now possible via:

  barebox@board:/ gpr.reboot_mode.next=serial reset

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx6qdl.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 828be9ce0dbb..c3e02d2117b3 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -6,5 +6,26 @@
 		pwm2 = &pwm3;
 		pwm3 = &pwm4;
 		ipu0 = &ipu1;
+		gpr.reboot_mode = &reboot_mode_gpr;
+	};
+};
+
+&src {
+	compatible = "fsl,imx6q-src", "fsl,imx51-src", "syscon", "simple-mfd";
+
+	reboot_mode_gpr: reboot-mode {
+		compatible = "barebox,syscon-reboot-mode";
+		offset = <0x40>, <0x44>; /* SRC_GPR{9,10} */
+		mask = <0xffffffff>, <0x10000000>;
+		mode-normal = <0>, <0>;
+		mode-serial = <0x00000010>, <0x10000000>;
+		mode-spi0-0 = <0x08000030>, <0x10000000>;
+		mode-spi0-1 = <0x18000030>, <0x10000000>;
+		mode-spi0-2 = <0x28000030>, <0x10000000>;
+		mode-spi0-3 = <0x38000030>, <0x10000000>;
+		mode-mmc0 = <0x00002040>, <0x10000000>;
+		mode-mmc1 = <0x00002840>, <0x10000000>;
+		mode-mmc2 = <0x00003040>, <0x10000000>;
+		mode-mmc3 = <0x00003840>, <0x10000000>;
 	};
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
