Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD27-0000f5-3U
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:27 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:18:03 +0100
Message-Id: <20181126091807.19398-7-o.rempel@pengutronix.de>
In-Reply-To: <20181126091807.19398-1-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 06/10] MIPS: mutliimage: pass devicetree from PBL to the
 main_entry
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

We need it for multiimage support.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boot/Makefile         |  2 +-
 arch/mips/boot/dtb.c            | 16 ++++++++++++----
 arch/mips/boot/main_entry-pbl.c | 15 ++++++++++-----
 arch/mips/boot/main_entry.c     | 10 ++++++++--
 4 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index b865b10f8b..d59b247910 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1,6 +1,6 @@
 obj-y += start.o
 obj-y += main_entry.o
 
-obj-$(CONFIG_BUILTIN_DTB) += dtb.o
+obj-$(CONFIG_OFDEVICE) += dtb.o
 
 pbl-y += start-pbl.o main_entry-pbl.o
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index 3f7f466413..b9ea8f41e6 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -23,6 +23,9 @@
 #include <memory.h>
 #include <asm/addrspace.h>
 
+void *glob_fdt;
+u32 glob_fdt_size;
+
 void of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size)
 {
@@ -38,6 +41,10 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 
 	if (dump)
 		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+
+	if (glob_fdt && glob_fdt_size)
+		request_sdram_region("fdt", (resource_size_t)glob_fdt,
+				     glob_fdt_size);
 }
 
 extern char __dtb_start[];
@@ -45,12 +52,13 @@ extern char __dtb_start[];
 static int of_mips_init(void)
 {
 	struct device_node *root;
+	void *fdt;
 
-	root = of_get_root_node();
-	if (root)
-		return 0;
+	fdt = glob_fdt;
+	if (!fdt)
+		fdt = __dtb_start;
 
-	root = of_unflatten_dtb(__dtb_start);
+	root = of_unflatten_dtb(fdt);
 	if (!IS_ERR(root)) {
 		pr_debug("using internal DTB\n");
 		of_set_root_node(root);
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index e408d29445..e608fcb355 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -31,7 +31,7 @@ extern void *input_data_end;
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-void pbl_main_entry(void);
+void pbl_main_entry(void *fdt, void *fdt_end);
 
 static unsigned long *ttb;
 
@@ -46,10 +46,11 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 }
 
-void __section(.text_entry) pbl_main_entry(void)
+void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end)
 {
-	u32 pg_start, pg_end, pg_len;
-	void (*barebox)(void);
+	u32 pg_start, pg_end, pg_len, fdt_len;
+	void *fdt_new;
+	void (*barebox)(void *fdt, u32 fdt_len);
 
 	puts_ll("pbl_main_entry()\n");
 
@@ -62,6 +63,10 @@ void __section(.text_entry) pbl_main_entry(void)
 
 	barebox_uncompress(&input_data, pg_len);
 
+	fdt_len = (u32)fdt_end - (u32)fdt;
+	fdt_new = (void *)PAGE_ALIGN_DOWN(STACK_BASE - fdt_len);
+	memcpy(fdt_new, fdt, fdt_len);
+
 	barebox = (void *)TEXT_BASE;
-	barebox();
+	barebox(fdt_new, fdt_len);
 }
diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 43a78c2956..e51e1b2f96 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -27,7 +27,7 @@
 
 extern void handle_reserved(void);
 
-void main_entry(void);
+void main_entry(void *fdt, u32 fdt_size);
 
 unsigned long exception_handlers[32];
 
@@ -71,12 +71,15 @@ static void trap_init(void)
 	write_c0_status(read_c0_status() & ~ST0_BEV);
 }
 
+extern void *glob_fdt;
+extern u32 glob_fdt_size;
+
 /**
  * Called plainly from assembler code
  *
  * @note The C environment isn't initialized yet
  */
-void main_entry(void)
+void main_entry(void *fdt, u32 fdt_size)
 {
 	/* clear the BSS first */
 	memset(__bss_start, 0x00, __bss_stop - __bss_start);
@@ -94,5 +97,8 @@ void main_entry(void)
 	mem_malloc_init((void *)MALLOC_BASE,
 			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
 
+	glob_fdt = fdt;
+	glob_fdt_size = fdt_size;
+
 	start_barebox();
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
