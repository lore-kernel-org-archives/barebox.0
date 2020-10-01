Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNvCS-0007c3-Pg
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 09:48:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 11:48:21 +0200
Message-Id: <20201001094820.21931-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201001094820.21931-1-a.fatoum@pengutronix.de>
References: <20201001094820.21931-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/2] ARM: stm32mp: dk2: have barebox image support DK1 as
 well
To: barebox@lists.infradead.org
Cc: Holger Assmann <h.assmann@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

The STM32MP157C-DK2 and STM32MP157A-DK1 are basically the same board
except the DK2 has a MIPI-DSI display attached and the SoC has a
crypto block. We can thus use the SoC type to differentiate between
them and just include both device trees at tolerable 12K size increase.

Cc: Holger Assmann <h.assmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c | 12 ++++++++++--
 arch/arm/dts/Makefile                      |  2 +-
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
index 7261d7a8bc58..d79bfa4f4d01 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -2,8 +2,10 @@
 #include <common.h>
 #include <mach/entry.h>
 #include <debug_ll.h>
+#include <mach/revision.h>
 
 extern char __dtb_z_stm32mp157c_dk2_start[];
+extern char __dtb_z_stm32mp157a_dk1_start[];
 
 static void setup_uart(void)
 {
@@ -14,13 +16,19 @@ static void setup_uart(void)
 ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 {
 	void *fdt;
+	u32 cputype;
+	int err;
 
 	stm32mp_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp157c_dk2_start + get_runtime_offset();
+	err = __stm32mp_get_cpu_type(&cputype);
+	if (!err && cputype == CPU_STM32MP157Axx)
+		fdt = __dtb_z_stm32mp157a_dk1_start;
+	else
+		fdt = __dtb_z_stm32mp157c_dk2_start;
 
-	stm32mp1_barebox_entry(fdt);
+	stm32mp1_barebox_entry(fdt + get_runtime_offset());
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index af061bd292b2..fe5b6e439898 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -110,7 +110,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingb
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
-lwl-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
+lwl-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
