Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VlLmZ-0001vm-Mg
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:05 +0100
Message-Id: <1385484367-15366-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/17] ARM: beaglebone: configure console from devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_beaglebone_defconfig | 2 +-
 arch/arm/dts/am335x-bone-common.dtsi         | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/am335x_beaglebone_defconfig b/arch/arm/configs/am335x_beaglebone_defconfig
index c80adc9..38e19ef 100644
--- a/arch/arm/configs/am335x_beaglebone_defconfig
+++ b/arch/arm/configs/am335x_beaglebone_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_CMD_ARM_MMUINFO=y
@@ -17,6 +16,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 # CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/beaglebone/env"
 CONFIG_CMD_EDIT=y
diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index 1ecf0b3..00271c4 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -7,6 +7,10 @@
  */
 
 / {
+	chosen {
+		linux,stdout-path = &uart0;
+	};
+
 	cpus {
 		cpu@0 {
 			cpu0-supply = <&dcdc2_reg>;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
