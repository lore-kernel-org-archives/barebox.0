Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLaO-0004NL-Ju
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:11:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:10:57 +0200
Message-Id: <20201005081058.2572-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201005081058.2572-1-a.fatoum@pengutronix.de>
References: <20201005081058.2572-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: stm32mp: dk2: rename to dkx to make dk1 support
 clearer
To: barebox@lists.infradead.org
Cc: Holger Assmann <has@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

As we now support both the stm32mp157a-dk1 and stm32mp157c-dk2 with
the same barebox image, we should call the board stm32mp15xx-dkx
instead. That's also how the upstream DTSI is named.

Suggested-by: Holger Assmann <has@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst                       |  2 +-
 arch/arm/boards/Makefile                               |  2 +-
 .../{stm32mp157c-dk2 => stm32mp15xx-dkx}/Makefile      |  0
 .../{stm32mp157c-dk2 => stm32mp15xx-dkx}/board.c       | 10 ++++++++--
 .../{stm32mp157c-dk2 => stm32mp15xx-dkx}/lowlevel.c    |  2 +-
 arch/arm/configs/stm32mp_defconfig                     |  2 +-
 arch/arm/dts/Makefile                                  |  2 +-
 arch/arm/dts/stm32mp157a-dk1.dts                       |  2 +-
 arch/arm/dts/stm32mp157c-dk2.dts                       |  2 +-
 .../dts/{stm32mp157a-dk1.dtsi => stm32mp15xx-dkx.dtsi} |  0
 arch/arm/mach-stm32mp/Kconfig                          |  7 +++++--
 images/Makefile.stm32mp                                |  8 ++++----
 12 files changed, 24 insertions(+), 15 deletions(-)
 rename arch/arm/boards/{stm32mp157c-dk2 => stm32mp15xx-dkx}/Makefile (100%)
 rename arch/arm/boards/{stm32mp157c-dk2 => stm32mp15xx-dkx}/board.c (65%)
 rename arch/arm/boards/{stm32mp157c-dk2 => stm32mp15xx-dkx}/lowlevel.c (93%)
 rename arch/arm/dts/{stm32mp157a-dk1.dtsi => stm32mp15xx-dkx.dtsi} (100%)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index b235c399271d..a06578602d9d 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -29,7 +29,7 @@ The resulting images will be placed under ``images/``:
 
 ::
 
-  barebox-stm32mp157c-dk2.img
+  barebox-stm32mp15xx-dkx.img # both DK1 and DK2
   barebox-stm32mp157c-lxa-mc1.img
   barebox-stm32mp157c-seeed-odyssey.img
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 986ea7a983fa..9183da684b79 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -132,7 +132,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
-obj-$(CONFIG_MACH_STM32MP157C_DK2)		+= stm32mp157c-dk2/
+obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
 obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
diff --git a/arch/arm/boards/stm32mp157c-dk2/Makefile b/arch/arm/boards/stm32mp15xx-dkx/Makefile
similarity index 100%
rename from arch/arm/boards/stm32mp157c-dk2/Makefile
rename to arch/arm/boards/stm32mp15xx-dkx/Makefile
diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
similarity index 65%
rename from arch/arm/boards/stm32mp157c-dk2/board.c
rename to arch/arm/boards/stm32mp15xx-dkx/board.c
index a547209cdf5e..1ddfee698d84 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -5,16 +5,22 @@
 
 static int dkx_probe(struct device_d *dev)
 {
+	const void *model;
+
 	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
 					 BBU_HANDLER_FLAG_DEFAULT);
 
-	barebox_set_model("STM32MP157C-DK2");
+	if (dev_get_drvdata(dev, &model) == 0)
+		barebox_set_model(model);
+
+	barebox_set_hostname("stm32mp15xx-dkx");
 
 	return 0;
 }
 
 static const struct of_device_id dkx_of_match[] = {
-	{ .compatible = "st,stm32mp157c-dk2" },
+	{ .compatible = "st,stm32mp157a-dk1", .data = "STM32MP157A-DK1" },
+	{ .compatible = "st,stm32mp157c-dk2", .data = "STM32MP157C-DK2" },
 	{ /* sentinel */ },
 };
 
diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
similarity index 93%
rename from arch/arm/boards/stm32mp157c-dk2/lowlevel.c
rename to arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
index d79bfa4f4d01..65f4bbb4dafd 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
@@ -13,7 +13,7 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
+ENTRY_FUNCTION(start_stm32mp15xx_dkx, r0, r1, r2)
 {
 	void *fdt;
 	u32 cputype;
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 92bdf5b04083..870d47739bdf 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_STM32MP=y
-CONFIG_MACH_STM32MP157C_DK2=y
+CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_THUMB2_BAREBOX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 376e8f0fa0db..fedcb0e29a93 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -111,7 +111,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingb
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
-lwl-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
+lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
diff --git a/arch/arm/dts/stm32mp157a-dk1.dts b/arch/arm/dts/stm32mp157a-dk1.dts
index f2cafae66b9b..7a907cc31446 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/dts/stm32mp157a-dk1.dts
@@ -5,4 +5,4 @@
  */
 
 #include <arm/stm32mp157a-dk1.dts>
-#include "stm32mp157a-dk1.dtsi"
+#include "stm32mp15xx-dkx.dtsi"
diff --git a/arch/arm/dts/stm32mp157c-dk2.dts b/arch/arm/dts/stm32mp157c-dk2.dts
index 6e73162ea4bd..98525abd71fb 100644
--- a/arch/arm/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/dts/stm32mp157c-dk2.dts
@@ -5,4 +5,4 @@
  */
 
 #include <arm/stm32mp157c-dk2.dts>
-#include "stm32mp157a-dk1.dtsi"
+#include "stm32mp15xx-dkx.dtsi"
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp15xx-dkx.dtsi
similarity index 100%
rename from arch/arm/dts/stm32mp157a-dk1.dtsi
rename to arch/arm/dts/stm32mp15xx-dkx.dtsi
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index f064a38088f4..b8ccbaab6702 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -8,9 +8,12 @@ config ARCH_STM32MP157
 	select ARM_PSCI_CLIENT
 	bool
 
-config MACH_STM32MP157C_DK2
+config MACH_STM32MP15XX_DKX
 	select ARCH_STM32MP157
-	bool "STM32MP157C-DK2 board"
+	bool "STM32MP157 DK1 and DK2 boards"
+	help
+	  builds a single barebox-stm32mp15xx-dkx.img that can be deployed
+	  as SSBL on both the stm32mp157a-dk1 and stm32mp157c-dk2
 
 config MACH_LXA_MC1
 	select ARCH_STM32MP157
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 1330a7ef3d71..eafe84a72185 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -13,10 +13,10 @@ STM32MP1_OPTS = -a 0xc0100000 -e 0xc0100000 -v1
 
 # --------------------------------------
 
-pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
-FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb.stm32
-OPTS_start_stm32mp157c_dk2.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
+pblb-$(CONFIG_MACH_STM32MP15XX_DKX) += start_stm32mp15xx_dkx
+FILE_barebox-stm32mp15xx-dkx.img = start_stm32mp15xx_dkx.pblb.stm32
+OPTS_start_stm32mp15xx_dkx.pblb.stm32 = $(STM32MP1_OPTS)
+image-$(CONFIG_MACH_STM32MP15XX_DKX) += barebox-stm32mp15xx-dkx.img
 
 pblb-$(CONFIG_MACH_LXA_MC1) += start_stm32mp157c_lxa_mc1
 FILE_barebox-stm32mp157c-lxa-mc1.img = start_stm32mp157c_lxa_mc1.pblb.stm32
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
