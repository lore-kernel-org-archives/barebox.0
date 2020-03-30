Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZh-0008Rt-RO
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:40 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 45752E0014
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:15 +0200
Message-Id: <20200330143915.663705-8-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 8/8] ARM: stm32mp: add support for STM32MP157-EV1 board
To: barebox@lists.infradead.org

The STM32MP157A-EV1 and STM32MP157C-EV1 Evaluation boards are the
full-feature demonstration and development platforms for the STM32MP1.

The C suffix indicates that crypto and secure boot are supported.
They can be handled the same for now. Later on, when the crypto cores
get device tree nodes, we'll want barebox to patch them out.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/Makefile                  |  1 +
 arch/arm/boards/stm32mp157-ev1/Makefile   |  2 ++
 arch/arm/boards/stm32mp157-ev1/board.c    | 30 +++++++++++++++++++++++
 arch/arm/boards/stm32mp157-ev1/lowlevel.c | 26 ++++++++++++++++++++
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/stm32mp157c-ev1.dts          | 18 ++++++++++++++
 arch/arm/mach-stm32mp/Kconfig             |  4 +++
 images/Makefile.stm32mp                   |  5 ++++
 8 files changed, 87 insertions(+)
 create mode 100644 arch/arm/boards/stm32mp157-ev1/Makefile
 create mode 100644 arch/arm/boards/stm32mp157-ev1/board.c
 create mode 100644 arch/arm/boards/stm32mp157-ev1/lowlevel.c
 create mode 100644 arch/arm/dts/stm32mp157c-ev1.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9fe458e0a390..d558c4cf8607 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
 obj-$(CONFIG_MACH_STM32MP157C_DK2)		+= stm32mp157c-dk2/
+obj-$(CONFIG_MACH_STM32MP157_EV1)		+= stm32mp157-ev1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
diff --git a/arch/arm/boards/stm32mp157-ev1/Makefile b/arch/arm/boards/stm32mp157-ev1/Makefile
new file mode 100644
index 000000000000..092c31d6b28d
--- /dev/null
+++ b/arch/arm/boards/stm32mp157-ev1/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/stm32mp157-ev1/board.c b/arch/arm/boards/stm32mp157-ev1/board.c
new file mode 100644
index 000000000000..5ab10568ac78
--- /dev/null
+++ b/arch/arm/boards/stm32mp157-ev1/board.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/bbu.h>
+
+static int ev1_device_init(void)
+{
+	int flags;
+
+	if (!of_machine_is_compatible("st,stm32mp157c-ev1"))
+		return 0;
+
+	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
+
+	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
+	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
+
+	if (bootsource_get_instance() == 0)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	barebox_set_model("STM32MP157-EV1");
+
+	return 0;
+}
+device_initcall(ev1_device_init);
diff --git a/arch/arm/boards/stm32mp157-ev1/lowlevel.c b/arch/arm/boards/stm32mp157-ev1/lowlevel.c
new file mode 100644
index 000000000000..0f62cd438224
--- /dev/null
+++ b/arch/arm/boards/stm32mp157-ev1/lowlevel.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <common.h>
+#include <mach/entry.h>
+#include <debug_ll.h>
+
+extern char __dtb_z_stm32mp157c_ev1_start[];
+
+static void setup_uart(void)
+{
+	/* first stage has set up the UART, so nothing to do here */
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION(start_stm32mp157_ev1, r0, r1, r2)
+{
+	void *fdt;
+
+	stm32mp_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_z_stm32mp157c_ev1_start + get_runtime_offset();
+
+	stm32mp1_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ddfe64e83bdf..38ce1d4e0812 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -94,6 +94,7 @@ lwl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-humm
 				imx6dl-hummingboard2.dtb.o imx6q-hummingboard2.dtb.o \
 				imx6q-h100.dtb.o
 lwl-dtb-$(CONFIG_MACH_STM32MP157C_DK2) += stm32mp157c-dk2.dtb.o
+lwl-dtb-$(CONFIG_MACH_STM32MP157_EV1) += stm32mp157c-ev1.dtb.o
 lwl-dtb-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 lwl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
diff --git a/arch/arm/dts/stm32mp157c-ev1.dts b/arch/arm/dts/stm32mp157c-ev1.dts
new file mode 100644
index 000000000000..6140b7479d27
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-ev1.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
+
+#include <arm/stm32mp157c-ev1.dts>
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+		};
+	};
+};
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 9b55a3d21843..7bcbae2849b0 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -12,4 +12,8 @@ config MACH_STM32MP157C_DK2
 	select ARCH_STM32MP157
 	bool "STM32MP157C-DK2 board"
 
+config MACH_STM32MP157_EV1
+	select ARCH_STM32MP157
+	bool "STM32MP157A-EV1 and STM32MP157C-EV1 board"
+
 endif
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 910e029a5b66..be413c260e2d 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -17,3 +17,8 @@ pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
 FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb.stm32
 OPTS_start_stm32mp157c_dk2.pblb.stm32 = $(STM32MP1_OPTS)
 image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
+
+pblb-$(CONFIG_MACH_STM32MP157_EV1) += start_stm32mp157_ev1
+FILE_barebox-stm32mp157-ev1.img = start_stm32mp157_ev1.pblb.stm32
+OPTS_start_stm32mp157_ev1.pblb.stm32 = $(STM32MP1_OPTS)
+image-$(CONFIG_MACH_STM32MP157_EV1) += barebox-stm32mp157-ev1.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
