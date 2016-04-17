Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1arcAw-000867-BD
 for barebox@lists.infradead.org; Sun, 17 Apr 2016 02:11:03 +0000
Received: by mail-wm0-x244.google.com with SMTP id a140so15402386wma.2
 for <barebox@lists.infradead.org>; Sat, 16 Apr 2016 19:10:41 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 16 Apr 2016 19:10:40 -0700
Message-ID: <CAKu_b=KTM7Q=nZEDXKKtBf8EPPi2SAcQxk2=HJOLzKei3R0vTQ@mail.gmail.com>
From: Jason Cobham <cobham.jason@gmail.com>
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
Subject: [PATCH] ARM: i.MX53: ccxmx53: Fix memory detection.
To: barebox@lists.infradead.org

This patch fixes memory detection on the Digi ccxmx53 board.
Also updates dts to support nand.

Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
---
 .../ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg |  2 +-
 arch/arm/boards/ccxmx53/lowlevel.c                 | 43 +++++++++++++---------
 arch/arm/dts/imx53-ccxmx53.dts                     |  1 +
 arch/arm/dts/imx53-ccxmx53.dtsi                    |  5 ++-
 4 files changed, 30 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
index 6f1cab6..68d947c 100644
--- a/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
+++ b/arch/arm/boards/ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg
@@ -31,7 +31,7 @@ wm 32 0x63fd90f8 0x00000800
 wm 32 0x63fd907c 0x020c0211
 wm 32 0x63fd9080 0x014c0155
 wm 32 0x63fd9018 0x000016d0
-wm 32 0x63fd9000 0xc4110000
+wm 32 0x63fd9000 0xc3110000
 wm 32 0x63fd900c 0x4d5122d2
 wm 32 0x63fd9010 0x92d18a22
 wm 32 0x63fd9014 0x00c70092
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c
b/arch/arm/boards/ccxmx53/lowlevel.c
index b321811..314ba7c 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -13,7 +13,10 @@
  *
  */

+#include <debug_ll.h>
 #include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <image-metadata.h>
@@ -26,28 +29,32 @@
 BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_512M, IMD_TYPE_PARAMETER,
"memsize=512", 0);
 BAREBOX_IMD_TAG_STRING(ccxmx53_memsize_SZ_1G, IMD_TYPE_PARAMETER,
"memsize=1024", 0);

-static void __noreturn start_imx53_ccxmx53_common(uint32_t size,
- void *fdt_blob_fixed_offset)
+extern char __dtb_imx53_ccxmx53_start[];
+
+ENTRY_FUNCTION(start_ccxmx53_512mb, r0, r1, r2)
 {
  void *fdt;

  imx5_cpu_lowlevel_init();
- arm_setup_stack(0xf8020000 - 8);
+ arm_setup_stack(0xf8020000 - 8);
+
+ IMD_USED(ccxmx53_memsize_SZ_512M);
+
+ fdt = __dtb_imx53_ccxmx53_start - get_runtime_offset();

- fdt = fdt_blob_fixed_offset - get_runtime_offset();
- barebox_arm_entry(0x70000000, size, fdt);
+ imx53_barebox_entry(fdt);
 }

-#define CCMX53_ENTRY(name, fdt_name, memory_size) \
- ENTRY_FUNCTION(name, r0, r1, r2) \
- { \
- extern char __dtb_##fdt_name##_start[]; \
- \
- IMD_USED(ccxmx53_memsize_##memory_size); \
- \
- start_imx53_ccxmx53_common(memory_size,  \
- __dtb_##fdt_name##_start); \
- }
-
-CCMX53_ENTRY(start_ccxmx53_512mb, imx53_ccxmx53, SZ_512M);
-CCMX53_ENTRY(start_ccxmx53_1gib, imx53_ccxmx53, SZ_1G);
+ENTRY_FUNCTION(start_ccxmx53_1gib, r0, r1, r2)
+{
+ void *fdt;
+
+ imx5_cpu_lowlevel_init();
+ arm_setup_stack(0xf8020000 - 8);
+
+ IMD_USED(ccxmx53_memsize_SZ_1G);
+
+ fdt = __dtb_imx53_ccxmx53_start - get_runtime_offset();
+
+ imx53_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/imx53-ccxmx53.dts b/arch/arm/dts/imx53-ccxmx53.dts
index 85d20c3..4b5ec65 100644
--- a/arch/arm/dts/imx53-ccxmx53.dts
+++ b/arch/arm/dts/imx53-ccxmx53.dts
@@ -12,6 +12,7 @@

 /dts-v1/;
 #include "imx53-ccxmx53.dtsi"
+#include "imx53.dtsi"

 / {
  model = "Digi ConnectCore ccxmx53";
diff --git a/arch/arm/dts/imx53-ccxmx53.dtsi b/arch/arm/dts/imx53-ccxmx53.dtsi
index 5553c68..e4b4e54 100644
--- a/arch/arm/dts/imx53-ccxmx53.dtsi
+++ b/arch/arm/dts/imx53-ccxmx53.dtsi
@@ -27,7 +27,7 @@

 / {
  memory {
- reg = <0x70000000 0x40000000>;
+ reg = <0x0 0x0>;
  };

 };
@@ -228,6 +228,7 @@
  pinctrl-0 = <&pinctrl_nand>;
  nand-bus-width = <8>;
  nand-ecc-mode = "hw";
+ nand-on-flash-bbt;
  status = "okay";

  partition@0 {
@@ -247,7 +248,7 @@

  partition@3 {
  label = "rootfs";
- reg = <0x500000 0x07B00000>;
+ reg = <0x500000 0x0>;
  };
 };

-- 
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
