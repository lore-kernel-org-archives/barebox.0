Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2fO5-0008JU-Im
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 16:31:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id s13-v6so2957896pfi.7
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 09:31:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 09:31:15 -0700
Message-Id: <20180919163115.7354-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180919163115.7354-1-andrew.smirnov@gmail.com>
References: <20180919163115.7354-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: i.MX: Add ZII SCU3 ESB board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add ZII SCU3 ESB board, which is i.MX51 based and similar enought to
RDU1 that it can be handled by the same image (different DT).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/board.c    |  3 ++-
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c |  4 ++++
 arch/arm/dts/Makefile                     |  3 ++-
 arch/arm/dts/imx51-zii-scu3-esb.dts       | 12 ++++++++++++
 4 files changed, 20 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/imx51-zii-scu3-esb.dts

diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index 5c05134c2..46368cccc 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -26,7 +26,8 @@ static int zii_rdu1_init(void)
 	const char *hostname;
 
 	if (!of_machine_is_compatible("zii,imx51-rdu1") &&
-	    !of_machine_is_compatible("zii,imx51-scu2-mezz"))
+	    !of_machine_is_compatible("zii,imx51-scu2-mezz") &&
+	    !of_machine_is_compatible("zii,imx51-scu3-esb"))
 		return 0;
 
 	hostname = of_get_machine_compatible() + strlen("imx51-");
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index d82597e0b..849c5624c 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -70,6 +70,7 @@ static unsigned int get_system_type(void)
 
 extern char __dtb_imx51_zii_rdu1_start[];
 extern char __dtb_imx51_zii_scu2_mezz_start[];
+extern char __dtb_imx51_zii_scu3_esb_start[];
 
 ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 {
@@ -107,6 +108,9 @@ ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 	case ZII_PLATFORM_IMX51_SCU2_MEZZ:
 		fdt = __dtb_imx51_zii_scu2_mezz_start;
 		break;
+	case ZII_PLATFORM_IMX51_SCU3_ESB:
+		fdt = __dtb_imx51_zii_scu3_esb_start;
+		break;
 	}
 
 	imx51_barebox_entry(fdt + get_runtime_offset());
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 82ff1b666..315183666 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -105,7 +105,8 @@ pbl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
-	imx51-zii-scu2-mezz.dtb.o
+	imx51-zii-scu2-mezz.dtb.o	\
+	imx51-zii-scu3-esb.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
diff --git a/arch/arm/dts/imx51-zii-scu3-esb.dts b/arch/arm/dts/imx51-zii-scu3-esb.dts
new file mode 100644
index 000000000..c83bf1731
--- /dev/null
+++ b/arch/arm/dts/imx51-zii-scu3-esb.dts
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/*
+ * Copyright (C) 2018 Zodiac Inflight Innovations
+ */
+
+
+#include <arm/imx51-zii-scu3-esb.dts>
+
+&iim {
+	barebox,provide-mac-address = <&fec 1 9>;
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
