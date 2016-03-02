Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ab9K2-0002U6-2Z
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:08:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Mar 2016 17:07:40 +0100
Message-Id: <1456934863-30990-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
References: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] ARM: i.MX: karo-tx6: Generalize 801x support
To: Barebox List <barebox@lists.infradead.org>

The device tree for the 801x variant only contains displays. The
displays are not part of the SoM, but instead of the baseboard,
so they should be described in a baseboard dts. With this patch
we rather include the common tx6x dtsi file and drop 801x from
the barebox device tree names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx6x/lowlevel.c |  4 ++--
 arch/arm/dts/Makefile                |  2 +-
 arch/arm/dts/imx6dl-tx6u-801x.dts    |  9 ---------
 arch/arm/dts/imx6dl-tx6u.dts         | 12 ++++++++++++
 4 files changed, 15 insertions(+), 12 deletions(-)
 delete mode 100644 arch/arm/dts/imx6dl-tx6u-801x.dts
 create mode 100644 arch/arm/dts/imx6dl-tx6u.dts

diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index e67315f..1aa24c5 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -36,7 +36,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-extern char __dtb_imx6dl_tx6u_801x_start[];
+extern char __dtb_imx6dl_tx6u_start[];
 
 BAREBOX_IMD_TAG_STRING(tx6x_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
 
@@ -53,7 +53,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_1g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_tx6u_801x_start - get_runtime_offset();
+	fdt = __dtb_imx6dl_tx6u_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bd9f453..ade49c0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -67,7 +67,7 @@ pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-dtb-$(CONFIG_MACH_TX25) += imx25-karo-tx25.dtb.o
-pbl-dtb-$(CONFIG_MACH_TX6X) += imx6dl-tx6u-801x.dtb.o
+pbl-dtb-$(CONFIG_MACH_TX6X) += imx6dl-tx6u.dtb.o
 pbl-dtb-$(CONFIG_MACH_TX6X) += imx6q-tx6q.dtb.o
 pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
 pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
diff --git a/arch/arm/dts/imx6dl-tx6u-801x.dts b/arch/arm/dts/imx6dl-tx6u-801x.dts
deleted file mode 100644
index b6018a6..0000000
--- a/arch/arm/dts/imx6dl-tx6u-801x.dts
+++ /dev/null
@@ -1,9 +0,0 @@
-#include <arm/imx6dl-tx6u-801x.dts>
-#include "imx6qdl.dtsi"
-#include "imx6qdl-tx6x.dtsi"
-
-/ {
-	model = "Ka-Ro electronics TX6U-801x Module";
-	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
-};
-
diff --git a/arch/arm/dts/imx6dl-tx6u.dts b/arch/arm/dts/imx6dl-tx6u.dts
new file mode 100644
index 0000000..77fda62
--- /dev/null
+++ b/arch/arm/dts/imx6dl-tx6u.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+#include <arm/imx6q.dtsi>
+#include <arm/imx6qdl-tx6.dtsi>
+#include "imx6qdl.dtsi"
+#include "imx6qdl-tx6x.dtsi"
+
+/ {
+	model = "Ka-Ro electronics TX6U-801x Module";
+	compatible = "karo,imx6dl-tx6dl", "fsl,imx6dl";
+};
+
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
