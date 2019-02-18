Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvdig-0003mE-Cy
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 07:52:09 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Feb 2019 08:51:59 +0100
Message-Id: <20190218075202.10091-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/4] MIPS: relocation: pass ram size to pbl_main_entry
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

To make barebox dynamically relocatable it should know
the RAM size to be able to calculate proper new location.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/boards/8devices-lima/lowlevel.S         | 3 ++-
 arch/mips/boards/black-swift/lowlevel.S           | 3 ++-
 arch/mips/boards/dlink-dir-320/lowlevel.S         | 3 ++-
 arch/mips/boards/dptechnics-dpt-module/lowlevel.S | 3 ++-
 arch/mips/boards/img-ci20/lowlevel.S              | 3 ++-
 arch/mips/boards/loongson-ls1b/lowlevel.S         | 3 ++-
 arch/mips/boards/qemu-malta/lowlevel.S            | 3 ++-
 arch/mips/boards/ritmix-rzx50/lowlevel.S          | 3 ++-
 arch/mips/boards/tplink-mr3020/lowlevel.S         | 3 ++-
 arch/mips/boards/tplink-wdr4300/lowlevel.S        | 3 ++-
 arch/mips/boot/main_entry-pbl.c                   | 5 +++--
 arch/mips/include/asm/asm.h                       | 3 ++-
 12 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boards/8devices-lima/lowlevel.S
index b53b23b42a..dd1ab6247d 100644
--- a/arch/mips/boards/8devices-lima/lowlevel.S
+++ b/arch/mips/boards/8devices-lima/lowlevel.S
@@ -11,6 +11,7 @@
 #include <mach/pbl_macros.h>
 #include <mach/pbl_ll_init_qca4531.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -38,4 +39,4 @@ skip_flash_test:
 	dcache_enable
 skip_pll_ram_config:
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, qca4531_8devices_lima)
+ENTRY_FUNCTION_END(BOARD_PBL_START, qca4531_8devices_lima, SZ_64M)
diff --git a/arch/mips/boards/black-swift/lowlevel.S b/arch/mips/boards/black-swift/lowlevel.S
index 0ba77435f8..5c5afcdf09 100644
--- a/arch/mips/boards/black-swift/lowlevel.S
+++ b/arch/mips/boards/black-swift/lowlevel.S
@@ -11,9 +11,10 @@
 #include <asm/asm.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
 	ar9331_pbl_generic_start
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, black_swift)
+ENTRY_FUNCTION_END(BOARD_PBL_START, black_swift, SZ_64M)
diff --git a/arch/mips/boards/dlink-dir-320/lowlevel.S b/arch/mips/boards/dlink-dir-320/lowlevel.S
index 9f3bd5dead..da969bc74e 100644
--- a/arch/mips/boards/dlink-dir-320/lowlevel.S
+++ b/arch/mips/boards/dlink-dir-320/lowlevel.S
@@ -9,6 +9,7 @@
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -19,4 +20,4 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, dlink_dir_320)
+ENTRY_FUNCTION_END(BOARD_PBL_START, dlink_dir_320, SZ_32M)
diff --git a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
index 28b8f4fac7..b5621963c3 100644
--- a/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
+++ b/arch/mips/boards/dptechnics-dpt-module/lowlevel.S
@@ -12,9 +12,10 @@
 #include <asm/pbl_macros.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
 	ar9331_pbl_generic_start
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, ar9331_dptechnics_dpt_module)
+ENTRY_FUNCTION_END(BOARD_PBL_START, ar9331_dptechnics_dpt_module, SZ_64M)
diff --git a/arch/mips/boards/img-ci20/lowlevel.S b/arch/mips/boards/img-ci20/lowlevel.S
index 056df17bf8..0295e44d1a 100644
--- a/arch/mips/boards/img-ci20/lowlevel.S
+++ b/arch/mips/boards/img-ci20/lowlevel.S
@@ -10,6 +10,7 @@
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -23,4 +24,4 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, img_ci20)
+ENTRY_FUNCTION_END(BOARD_PBL_START, img_ci20, SZ_1G)
diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
index 37744e9fac..c533df3ce5 100644
--- a/arch/mips/boards/loongson-ls1b/lowlevel.S
+++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
@@ -9,6 +9,7 @@
 #include <mach/loongson1.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -21,4 +22,4 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, loongson_ls1b)
+ENTRY_FUNCTION_END(BOARD_PBL_START, loongson_ls1b, SZ_64M)
diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index 3861ae9e46..e4ecde45cf 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -10,6 +10,7 @@
 #include <asm/asm.h>
 #include <asm/pbl_macros.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 #include <asm/addrspace.h>
 #include <asm/gt64120.h>
@@ -82,4 +83,4 @@ __start:
 	li	t0, GT_LD(0x1bdfffff)
 	sw	t0, GT_PCI0M1HD_OFS(t1)
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, qemu_malta)
+ENTRY_FUNCTION_END(BOARD_PBL_START, qemu_malta, SZ_256M)
diff --git a/arch/mips/boards/ritmix-rzx50/lowlevel.S b/arch/mips/boards/ritmix-rzx50/lowlevel.S
index 7a9743835e..33810f67f5 100644
--- a/arch/mips/boards/ritmix-rzx50/lowlevel.S
+++ b/arch/mips/boards/ritmix-rzx50/lowlevel.S
@@ -10,6 +10,7 @@
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -23,4 +24,4 @@ ENTRY_FUNCTION(BOARD_PBL_START)
 	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, rzx50)
+ENTRY_FUNCTION_END(BOARD_PBL_START, rzx50, SZ_64M)
diff --git a/arch/mips/boards/tplink-mr3020/lowlevel.S b/arch/mips/boards/tplink-mr3020/lowlevel.S
index 0a1c193c1e..b96292ecc4 100644
--- a/arch/mips/boards/tplink-mr3020/lowlevel.S
+++ b/arch/mips/boards/tplink-mr3020/lowlevel.S
@@ -11,9 +11,10 @@
 #include <asm/asm.h>
 #include <mach/pbl_macros.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
 	ar9331_pbl_generic_start
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, tplink_mr3020)
+ENTRY_FUNCTION_END(BOARD_PBL_START, tplink_mr3020, SZ_32M)
diff --git a/arch/mips/boards/tplink-wdr4300/lowlevel.S b/arch/mips/boards/tplink-wdr4300/lowlevel.S
index 461b257f41..8aed5ddcf1 100644
--- a/arch/mips/boards/tplink-wdr4300/lowlevel.S
+++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
@@ -11,6 +11,7 @@
 #include <mach/pbl_macros.h>
 #include <mach/pbl_ll_init_ar9344_1.1.h>
 #include <asm/pbl_nmon.h>
+#include <linux/sizes.h>
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
@@ -35,4 +36,4 @@ skip_flash_test:
 
 skip_pll_ram_config:
 
-ENTRY_FUNCTION_END(BOARD_PBL_START, ar9344_tl_wdr4300_v1.7)
+ENTRY_FUNCTION_END(BOARD_PBL_START, ar9344_tl_wdr4300_v1.7, SZ_128M)
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index b40887b064..28eaa8791f 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -18,7 +18,7 @@ extern void *input_data_end;
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-void pbl_main_entry(void *fdt, void *fdt_end);
+void pbl_main_entry(void *fdt, void *fdt_end, u32 ram_size);
 
 static unsigned long *ttb;
 
@@ -33,7 +33,8 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 }
 
-void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end)
+void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
+					   u32 ram_size)
 {
 	u32 pg_start, pg_end, pg_len, fdt_len;
 	void *fdt_new;
diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 7d2b673bd9..a85467ceed 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -89,13 +89,14 @@ EXPORT(symbol)
 /*
  * ENTRY_FUNCTION_END - mark end of entry function
  */
-#define ENTRY_FUNCTION_END(symbol, dtb)			\
+#define ENTRY_FUNCTION_END(symbol, dtb, ram_size)	\
 	mips_nmon;					\
 	copy_to_link_location	symbol;			\
 	stack_setup;					\
 							\
 	la	a0, __dtb_ ## dtb##_start;		\
 	la	a1, __dtb_ ## dtb##_end;		\
+	li	a2, ram_size;				\
 	la	v0, pbl_main_entry;			\
 	jal	v0;					\
 	 nop;						\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
