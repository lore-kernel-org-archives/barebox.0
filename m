Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPJb-0007Gp-Ib
 for barebox@lists.infradead.org; Thu, 13 Jun 2019 12:58:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so15017555lfc.3
 for <barebox@lists.infradead.org>; Thu, 13 Jun 2019 05:58:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Jun 2019 15:58:48 +0300
Message-Id: <20190613125848.15994-1-antonynpavlov@gmail.com>
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
Subject: [RFC] request_sdram_region: print error message
To: barebox@lists.infradead.org

I have found that MIPS memory misconfiguration leads to
request_sdram_region() errors. But mem_malloc_resource()
has no error checks for request_sdram_region() result.
MIPS memory mapping needs additional changes this commit
is just RFC on request_sdram_region().

Can we embed error message into request_sdram_region()?

The commid introduce necessary chages but I have no idea
how to change this part of arch/arm/cpu/mmu.c:

    if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
        /*
         * This can mean that:
         * - the early MMU code has put the ttb into a place
         *   which we don't have inside our available memory
         * - Somebody else has occupied the ttb region which means
         *   the ttb will get corrupted.
         */
        pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
                ttb);

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/cpu.c          | 3 +--
 arch/arm/lib32/bootm.c      | 7 +------
 arch/arm/lib32/bootz.c      | 1 -
 arch/mips/lib/cpu-probe.c   | 3 +--
 arch/ppc/mach-mpc5xxx/cpu.c | 5 +----
 common/elf.c                | 1 -
 common/memory.c             | 5 +++++
 common/uimage.c             | 5 -----
 8 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index c5daf6c60e..6bf9dfb11c 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -113,8 +113,7 @@ extern unsigned long arm_stack_top;
 
 static int arm_request_stack(void)
 {
-	if (!request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE))
-		pr_err("Error: Cannot request SDRAM region for stack\n");
+	request_sdram_region("stack", arm_stack_top - STACK_SIZE, STACK_SIZE);
 
 	return 0;
 }
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 4cf570e577..491729b2db 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -382,8 +382,6 @@ static int do_bootz_linux(struct image_data *data)
 
 	data->os_res = request_sdram_region("zimage", load_address, image_size);
 	if (!data->os_res) {
-		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%zu).\n",
-		       load_address, load_address + image_size, image_size);
 		ret = -ENOMEM;
 		goto err_out;
 	}
@@ -506,14 +504,11 @@ static int do_bootm_aimage(struct image_data *data)
 	cmp = &header->kernel;
 	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size);
 	if (!data->os_res) {
-		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
-				cmp->load_addr, cmp->size);
+		pr_err("using default load address\n");
 
 		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
 		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size);
 		if (!data->os_res) {
-			pr_err("Cannot request region 0x%08x - 0x%08x\n",
-					cmp->load_addr, cmp->size);
 			ret = -ENOMEM;
 			goto err_out;
 		}
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index c0ffd93c2b..4c4882d201 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -87,7 +87,6 @@ static int do_bootz(int argc, char *argv[])
 			res = request_sdram_region("zimage",
 					bank->start + SZ_8M, end);
 			if (!res) {
-				printf("can't request region for kernel\n");
 				goto err_out1;
 			}
 		}
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 2556a8b240..4cc96aba45 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -169,8 +169,7 @@ unsigned long mips_stack_top;
 
 static int mips_request_stack(void)
 {
-	if (!request_sdram_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE))
-		pr_err("Error: Cannot request SDRAM region for stack\n");
+	request_sdram_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE);
 
 	return 0;
 }
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index ab58967aa4..de8f65e4dd 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -68,11 +68,8 @@ static int mpc5xxx_reserve_region(void)
 
 	/* keep this in sync with the assembler routines setting up the stack */
 	r = request_sdram_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
-	if (r == NULL) {
-		pr_err("Failed to request stack region at: 0x%08lx/0x%08lx\n",
-			_text_base - STACK_SIZE, _text_base - 1);
+	if (r == NULL)
 		return -EBUSY;
-	}
 
 	return 0;
 }
diff --git a/common/elf.c b/common/elf.c
index 8edf388564..66d6c8989d 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -22,7 +22,6 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 	r = xzalloc(sizeof(*r));
 	r_new = request_sdram_region("elf_section", start, size);
 	if (!r_new) {
-		pr_err("Failed to request region: %pa %pa\n", &start, &size);
 		return -EINVAL;
 	}
 
diff --git a/common/memory.c b/common/memory.c
index 21b2b4f63a..12488958f9 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -153,6 +153,7 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 		resource_size_t size)
 {
 	struct memory_bank *bank;
+	resource_size_t rsize;
 
 	for_each_memory_bank(bank) {
 		struct resource *res;
@@ -163,6 +164,10 @@ struct resource *request_sdram_region(const char *name, resource_size_t start,
 			return res;
 	}
 
+	rsize = start + size - 1;
+	pr_err("Cannot request SDRAM region %pa - %pa for %s\n",
+						&start, &rsize, name);
+
 	return NULL;
 }
 
diff --git a/common/uimage.c b/common/uimage.c
index 35bfb10b06..83fbca9f76 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -355,9 +355,6 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 		uimage_resource = request_sdram_region("uimage",
 				start, size);
 		if (!uimage_resource) {
-			resource_size_t prsize = start + size - 1;
-			printf("unable to request SDRAM %pa - %pa\n",
-				&start, &prsize);
 			return -ENOMEM;
 		}
 	}
@@ -386,8 +383,6 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	while (1) {
 		res = request_sdram_region("image", adr, size);
 		if (!res) {
-			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
-				adr, adr + size - 1);
 			goto out;
 		}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
