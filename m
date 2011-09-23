Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004P6-Vw
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:20 +0200
Message-Id: <1316769860-24549-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/12] ARM: switch to generic memory banks
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c              |   13 -------------
 arch/arm/cpu/mmu.c              |   23 ++++++++++++-----------
 arch/arm/include/asm/armlinux.h |    3 ---
 arch/arm/include/asm/memory.h   |   17 ++++++-----------
 arch/arm/lib/armlinux.c         |   10 +++++-----
 arch/arm/lib/bootz.c            |   13 +++++++------
 drivers/base/resource.c         |   15 ---------------
 7 files changed, 30 insertions(+), 64 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 3df0c0f..d4a3b14 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -90,19 +90,6 @@ void arch_shutdown(void)
 #endif
 }
 
-LIST_HEAD(memory_list);
-
-void armlinux_add_dram(struct device_d *dev)
-{
-	struct arm_memory *mem = xzalloc(sizeof(*mem));
-
-	mem->dev = dev;
-	mem->start = dev->resource[0].start;
-	mem->size = dev->resource[0].size;
-
-	list_add_tail(&mem->list, &memory_list);
-}
-
 /**
  * @page arm_boot_preparation Linux Preparation on ARM
  *
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6fa600f..4446813 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -5,6 +5,7 @@
 #include <sizes.h>
 #include <asm/memory.h>
 #include <asm/system.h>
+#include <memory.h>
 
 static unsigned long *ttb;
 
@@ -114,23 +115,23 @@ static void remap_range(void *_start, size_t size, uint32_t flags)
  * remap the memory bank described by mem cachable and
  * bufferable
  */
-static int arm_mmu_remap_sdram(struct arm_memory *mem)
+static int arm_mmu_remap_sdram(struct memory_bank *bank)
 {
-	unsigned long phys = (unsigned long)mem->start;
+	unsigned long phys = (unsigned long)bank->start;
 	unsigned long ttb_start = phys >> 20;
-	unsigned long ttb_end = (phys + mem->size) >> 20;
-	unsigned long num_ptes = mem->size >> 10;
+	unsigned long ttb_end = (phys + bank->size) >> 20;
+	unsigned long num_ptes = bank->size >> 10;
 	int i, pte;
 	u32 *ptes;
 
 	debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
-			phys, mem->size);
+			phys, bank->size);
 
 	/*
 	 * We replace each 1MiB section in this range with second level page
 	 * tables, therefore we must have 1Mib aligment here.
 	 */
-	if ((phys & (SZ_1M - 1)) || (mem->size & (SZ_1M - 1)))
+	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
 		return -EINVAL;
 
 	ptes = memalign(0x400, num_ptes * sizeof(u32));
@@ -210,7 +211,7 @@ static void vectors_init(void)
  */
 static int mmu_init(void)
 {
-	struct arm_memory *mem;
+	struct memory_bank *bank;
 	int i;
 
 	ttb = memalign(0x10000, 0x4000);
@@ -235,8 +236,8 @@ static int mmu_init(void)
 	 * This is to speed up the generation of 2nd level page tables
 	 * below
 	 */
-	for_each_sdram_bank(mem)
-		create_section(mem->start, mem->start, mem->size >> 20,
+	for_each_memory_bank(bank)
+		create_section(bank->start, bank->start, bank->size >> 20,
 				PMD_SECT_DEF_CACHED);
 
 	asm volatile (
@@ -250,8 +251,8 @@ static int mmu_init(void)
 	 * Now that we have the MMU and caches on remap sdram again using
 	 * page tables
 	 */
-	for_each_sdram_bank(mem)
-		arm_mmu_remap_sdram(mem);
+	for_each_memory_bank(bank)
+		arm_mmu_remap_sdram(bank);
 
 	return 0;
 }
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index bb25f9a..ba3a424 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -31,7 +31,4 @@ struct image_data;
 
 void start_linux(void *adr, int swap, struct image_data *data);
 
-struct device_d *arm_add_mem_device(const char* name, resource_size_t start,
-				    resource_size_t size);
-
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 0729886..28afaa3 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -1,17 +1,12 @@
 #ifndef __ASM_ARM_MEMORY_H
 #define __ASM_ARM_MEMORY_H
 
-struct arm_memory {
-	struct list_head list;
-	struct device_d *dev;
-	unsigned long start;
-	unsigned long size;
-};
+#include <memory.h>
 
-extern struct list_head memory_list;
-
-void armlinux_add_dram(struct device_d *dev);
-
-#define for_each_sdram_bank(mem)	list_for_each_entry(mem, &memory_list, list)
+static inline void arm_add_mem_device(const char* name, resource_size_t start,
+				    resource_size_t size)
+{
+	barebox_add_memory_bank(name, start, size);
+}
 
 #endif	/* __ASM_ARM_MEMORY_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 25b0f2a..e3a74f4 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -35,13 +35,13 @@
 #include <malloc.h>
 #include <fcntl.h>
 #include <errno.h>
+#include <memory.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
 #include <asm/barebox-arm.h>
 #include <asm/armlinux.h>
 #include <asm/system.h>
-#include <asm/memory.h>
 
 static struct tag *params;
 static int armlinux_architecture = 0;
@@ -66,14 +66,14 @@ static void setup_start_tag(void)
 
 static void setup_memory_tags(void)
 {
-	struct arm_memory *mem;
+	struct memory_bank *bank;
 
-	for_each_sdram_bank(mem) {
+	for_each_memory_bank(bank) {
 		params->hdr.tag = ATAG_MEM;
 		params->hdr.size = tag_size(tag_mem32);
 
-		params->u.mem.start = mem->dev->resource[0].start;
-		params->u.mem.size = mem->dev->resource[0].size;
+		params->u.mem.start = bank->start;
+		params->u.mem.size = bank->size;
 
 		params = tag_next(params);
 	}
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 13bed25..fc14487 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -9,6 +9,7 @@
 #include <asm/armlinux.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
+#include <memory.h>
 
 struct zimage_header {
 	u32	unused[9];
@@ -26,7 +27,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	void *zimage;
 	u32 end;
 	int usemap = 0;
-	struct arm_memory *mem = list_first_entry(&memory_list, struct arm_memory, list);
+	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
 
 	if (argc != 2) {
 		barebox_cmd_usage(cmdtp);
@@ -44,8 +45,8 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	 * the first 128MB of SDRAM.
 	 */
 	zimage = memmap(fd, PROT_READ);
-	if (zimage && (unsigned long)zimage  >= mem->start &&
-			(unsigned long)zimage < mem->start + SZ_128M) {
+	if (zimage && (unsigned long)zimage  >= bank->start &&
+			(unsigned long)zimage < bank->start + SZ_128M) {
 		usemap = 1;
 		header = zimage;
 	}
@@ -78,11 +79,11 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 		end = swab32(end);
 
 	if (!usemap) {
-		if (mem->size <= SZ_128M) {
+		if (bank->size <= SZ_128M) {
 			zimage = xmalloc(end);
 		} else {
-			zimage = (void *)mem->start + SZ_8M;
-			if (mem->start + SZ_8M + end >= MALLOC_BASE) {
+			zimage = (void *)bank->start + SZ_8M;
+			if (bank->start + SZ_8M + end >= MALLOC_BASE) {
 				printf("won't overwrite malloc space with image\n");
 				goto err_out1;
 			}
diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 0da1680..5c9c16c 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -121,18 +121,3 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 }
 EXPORT_SYMBOL(add_usb_ehci_device);
 #endif
-
-#ifdef CONFIG_ARM
-#include <asm/armlinux.h>
-
-struct device_d *arm_add_mem_device(const char* name, resource_size_t start,
-				    resource_size_t size)
-{
-	struct device_d *dev;
-
-	dev = add_mem_device(name, start, size, IORESOURCE_MEM_WRITEABLE);
-	armlinux_add_dram(dev);
-
-	return dev;
-}
-#endif
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
