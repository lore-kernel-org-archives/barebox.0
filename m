Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJnFE-00088c-5o
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 22:53:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id v12so595980pgq.1
 for <barebox@lists.infradead.org>; Thu, 25 Apr 2019 15:53:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 25 Apr 2019 15:53:18 -0700
Message-Id: <20190425225318.27421-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: zii-vf610-dev: Add ZII SSMB DTU board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>

Add the Zodiac Digital Tapping Unit, a VF610 based network device with
5 Ethernet ports.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c    |  4 +++-
 arch/arm/boards/zii-vf610-dev/lowlevel.c |  5 +++++
 arch/arm/dts/Makefile                    |  3 ++-
 arch/arm/dts/vf610-zii-ssmb-dtu.dts      | 16 ++++++++++++++++
 4 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/vf610-zii-ssmb-dtu.dts

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index e74ada396..2ac0685bd 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -66,6 +66,7 @@ static int zii_vf610_dev_set_hostname(void)
 		const char *compatible;
 		const char *hostname;
 	} boards[] = {
+		{ "zii,vf610dtu", "dtu" },
 		{ "zii,vf610spu3", "spu3" },
 		{ "zii,vf610spb4", "spb4" },
 		{ "zii,vf610cfu1", "cfu1" },
@@ -114,7 +115,8 @@ static int zii_vf610_register_emmc_bbu(void)
 
 	if (!of_machine_is_compatible("zii,vf610spu3") &&
 	    !of_machine_is_compatible("zii,vf610cfu1") &&
-	    !of_machine_is_compatible("zii,vf610spb4"))
+	    !of_machine_is_compatible("zii,vf610spb4") &&
+	    !of_machine_is_compatible("zii,vf610dtu"))
 		return 0;
 
 	ret = vf610_bbu_internal_mmcboot_register_handler("eMMC",
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index 0db645931..b320fbc0c 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -42,6 +42,7 @@ enum zii_platform_vf610_type {
 	ZII_PLATFORM_VF610_CFU1		= 0x04,
 	ZII_PLATFORM_VF610_DEV_REV_C	= 0x05,
 	ZII_PLATFORM_VF610_SPB4		= 0x06,
+	ZII_PLATFORM_VF610_SSMB_DTU	= 0x07,
 };
 
 static unsigned int get_system_type(void)
@@ -79,6 +80,7 @@ extern char __dtb_vf610_zii_dev_rev_c_start[];
 extern char __dtb_vf610_zii_cfu1_start[];
 extern char __dtb_vf610_zii_ssmb_spu3_start[];
 extern char __dtb_vf610_zii_scu4_aib_start[];
+extern char __dtb_vf610_zii_ssmb_dtu_start[];
 extern char __dtb_vf610_zii_spb4_start[];
 
 ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
@@ -120,6 +122,9 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 	case ZII_PLATFORM_VF610_SPB4:
 		fdt = __dtb_vf610_zii_spb4_start;
 		break;
+	case ZII_PLATFORM_VF610_SSMB_DTU:
+		fdt = __dtb_vf610_zii_ssmb_dtu_start;
+		break;
 	}
 
 	vf610_barebox_entry(fdt + get_runtime_offset());
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1c6129816..be3edbb0c 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -125,7 +125,8 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-cfu1.dtb.o		\
 	vf610-zii-ssmb-spu3.dtb.o	\
 	vf610-zii-scu4-aib.dtb.o	\
-	vf610-zii-spb4.dtb.o
+	vf610-zii-spb4.dtb.o		\
+	vf610-zii-ssmb-dtu.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
diff --git a/arch/arm/dts/vf610-zii-ssmb-dtu.dts b/arch/arm/dts/vf610-zii-ssmb-dtu.dts
new file mode 100644
index 000000000..6ffb7aa62
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-ssmb-dtu.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <arm/vf610-zii-ssmb-dtu.dts>
+
+#include "vf610-zii-dev.dtsi"
+
+/ {
+	aliases {
+		/*
+		* NVMEM device corresponding to EEPROM attached to
+		* the switch shared DT node with it, so we use that
+		* fact to create a desirable naming
+		*/
+		switch-eeprom = &switch0;
+	};
+};
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
