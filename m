Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xf-Cr
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:46:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:38 +0100
Message-Id: <1359449147-30145-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] treewide: fix format specifiers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c |    4 ++--
 arch/arm/mach-omap/gpmc.c  |    6 +++---
 arch/ppc/lib/board.c       |    4 ++--
 common/environment.c       |   10 ++++++----
 common/hush.c              |    4 +---
 common/module.c            |    2 +-
 common/parser.c            |    4 +---
 common/resource.c          |   26 +++++++++++++++++++-------
 common/uimage.c            |    5 +++--
 drivers/mci/mxs.c          |    2 +-
 drivers/nor/cfi_flash.c    |   14 +++++++++-----
 drivers/nor/cfi_flash.h    |    4 ++++
 fs/tftp.c                  |    4 ++--
 lib/gui/bmp.c              |    2 +-
 lib/xfuncs.c               |    4 ++--
 15 files changed, 57 insertions(+), 38 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index dd70e6d..841a9ed 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -168,8 +168,8 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 static void add_mem(unsigned long base0, unsigned long size0,
 		unsigned long base1, unsigned long size1)
 {
-	debug("%s: cs0 base: 0x%08x cs0 size: 0x%08x\n", __func__, base0, size0);
-	debug("%s: cs1 base: 0x%08x cs1 size: 0x%08x\n", __func__, base1, size1);
+	debug("%s: cs0 base: 0x%08lx cs0 size: 0x%08lx\n", __func__, base0, size0);
+	debug("%s: cs1 base: 0x%08lx cs1 size: 0x%08lx\n", __func__, base1, size1);
 
 	if (base0 + size0 == base1 && size1 > 0) {
 		/*
diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 3aaa4f6..bb84b38 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -89,7 +89,7 @@ void gpmc_generic_init(unsigned int cfg)
 	 * But NEVER run me in XIP mode! I will Die!
 	 */
 	while (x < GPMC_NUM_CS) {
-		debug("gpmccs=%d Reg:0x%x <-0x0\n", x, reg);
+		debug("gpmccs=%d Reg:0x%p <-0x0\n", x, reg);
 		writel(0x0, reg);
 		reg += GPMC_CONFIG_CS_SIZE;
 		x++;
@@ -119,14 +119,14 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 
 	/* Write the CFG1-6 regs */
 	while (x < 6) {
-		debug("gpmccfg%d Reg:0x%x <-0x%08x\n",
+		debug("gpmccfg%d Reg:0x%p <-0x%08x\n",
 				x, reg, config->cfg[x]);
 		writel(config->cfg[x], reg);
 		reg += GPMC_CONFIG_REG_OFF;
 		x++;
 	}
 	/* reg now points to CFG7 */
-	debug("gpmccfg%d Reg:0x%x <-0x%08x\n",
+	debug("gpmccfg%d Reg:0x%p <-0x%08x\n",
 			x, reg, (0x1 << 6) |		/* CS enable */
 		     ((config->size & 0xF) << 8) |	/* Size */
 		     ((config->base >> 24) & 0x3F));
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index d219862..18d2588 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -52,8 +52,8 @@ void board_init_r (ulong end_of_ram)
 	 */
 	malloc_end = (_text_base - (128 << 10)) & ~(4095);
 
-	debug("malloc_end: 0x%08x\n", malloc_end);
-	debug("TEXT_BASE after relocation: 0x%08x\n", _text_base);
+	debug("malloc_end: 0x%08lx\n", malloc_end);
+	debug("TEXT_BASE after relocation: 0x%08lx\n", _text_base);
 
 	mem_malloc_init((void *)(malloc_end - MALLOC_SIZE), (void *)(malloc_end - 1));
 
diff --git a/common/environment.c b/common/environment.c
index e11cd9d..379e76e 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -106,11 +106,13 @@ int file_save_action(const char *filename, struct stat *statbuf,
 		memcpy(data->writep, path, len);
 		inode->size = ENVFS_32(len);
 		data->writep += PAD4(len);
-		debug("handling symlink %s size %ld namelen %d headerlen %d\n", filename + strlen(data->base),
-			len, namelen, ENVFS_32(inode->headerlen));
+		debug("handling symlink %s size %d namelen %d headerlen %d\n",
+				filename + strlen(data->base),
+				len, namelen, ENVFS_32(inode->headerlen));
 	} else {
-		debug("handling file %s size %ld namelen %d headerlen %d\n", filename + strlen(data->base),
-			statbuf->st_size, namelen, ENVFS_32(inode->headerlen));
+		debug("handling file %s size %lld namelen %d headerlen %d\n",
+				filename + strlen(data->base),
+				statbuf->st_size, namelen, ENVFS_32(inode->headerlen));
 
 		inode->size = ENVFS_32(statbuf->st_size);
 		fd = open(filename, O_RDONLY);
diff --git a/common/hush.c b/common/hush.c
index f9e6411..1f468f6 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -937,14 +937,12 @@ static int run_list_real(struct p_context *ctx, struct pipe *pi)
 	return rcode;
 }
 
-#ifdef DEBUG
 /* broken, of course, but OK for testing */
-static char *indenter(int i)
+static __maybe_unused char *indenter(int i)
 {
 	static char blanks[] = "                                    ";
 	return &blanks[sizeof(blanks) - i - 1];
 }
-#endif
 
 /* return code is the exit status of the pipe */
 static int free_pipe(struct pipe *pi, int indent)
diff --git a/common/module.c b/common/module.c
index 4cb8ef3..109fe5c 100644
--- a/common/module.c
+++ b/common/module.c
@@ -104,7 +104,7 @@ static int simplify_symbols(Elf32_Shdr *sechdrs,
 			sym[i].st_value
 			  = resolve_symbol(sechdrs,
 					   strtab + sym[i].st_name);
-			debug("undef  : %20s 0x%08x 0x%08lx\n", strtab + sym[i].st_name, sym[i].st_value);
+			debug("undef  : %20s 0x%08x\n", strtab + sym[i].st_name, sym[i].st_value);
 
 			/* Ok if resolved.  */
 			if (sym[i].st_value != 0)
diff --git a/common/parser.c b/common/parser.c
index fd578c7..4d993df 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -58,9 +58,7 @@ static void process_macros (const char *input, char *output)
 	/* 1 = waiting for '(' or '{' */
 	/* 2 = waiting for ')' or '}' */
 	/* 3 = waiting for '''  */
-#ifdef DEBUG
-	char *output_start = output;
-#endif
+	char __maybe_unused *output_start = output;
 
 	pr_debug("[PROCESS_MACROS] INPUT len %d: \"%s\"\n", strlen (input),
 		input);
diff --git a/common/resource.c b/common/resource.c
index ea6abe8..5795e79 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -43,15 +43,21 @@ struct resource *request_region(struct resource *parent,
 	struct resource *r, *new;
 
 	if (end < start) {
-		debug("%s: request region 0x%08x:0x%08x: end < start\n",
-				__func__, start, end);
+		debug("%s: request region 0x%08llx:0x%08llx: end < start\n",
+				__func__,
+				(unsigned long long)start,
+				(unsigned long long)end);
 		return NULL;
 	}
 
 	/* outside parent resource? */
 	if (start < parent->start || end > parent->end) {
-		debug("%s: 0x%08x:0x%08x outside parent resource 0x%08x:0x%08x\n",
-				__func__, start, end, parent->start, parent->end);
+		debug("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
+				__func__,
+				(unsigned long long)start,
+				(unsigned long long)end,
+				(unsigned long long)parent->start,
+				(unsigned long long)parent->end);
 		return NULL;
 	}
 
@@ -64,13 +70,19 @@ struct resource *request_region(struct resource *parent,
 			goto ok;
 		if (start > r->end)
 			continue;
-		debug("%s: 0x%08x:0x%08x conflicts with 0x%08x:0x%08x\n",
-				__func__, start, end, r->start, r->end);
+		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
+				__func__,
+				(unsigned long long)start,
+				(unsigned long long)end,
+				(unsigned long long)r->start,
+				(unsigned long long)r->end);
 		return NULL;
 	}
 
 ok:
-	debug("%s ok: 0x%08x:0x%08x\n", __func__, start, end);
+	debug("%s ok: 0x%08llx:0x%08llx\n", __func__,
+			(unsigned long long)start,
+			(unsigned long long)end);
 
 	new = xzalloc(sizeof(*new));
 	init_resource(new, name);
diff --git a/common/uimage.c b/common/uimage.c
index 1ac0b7d..06f97f0 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -440,8 +440,9 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 	uimage_resource = request_sdram_region("uimage",
 				start, size);
 	if (!uimage_resource) {
-		printf("unable to request SDRAM 0x%08x-0x%08x\n",
-			start, start + size - 1);
+		printf("unable to request SDRAM 0x%08llx-0x%08llx\n",
+			(unsigned long long)start,
+			(unsigned long long)start + size - 1);
 		return NULL;
 	}
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index ed644d1..b5b3665 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -724,7 +724,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 		mxs_mci->index = 3;
 		break;
 	default:
-		pr_debug("Unknown SSP unit at address 0x%08x\n", mxs_mci->regs);
+		pr_debug("Unknown SSP unit at address 0x%p\n", mxs_mci->regs);
 		return 0;
 	}
 #endif
diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 6154940..637f98b 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -461,7 +461,7 @@ static int __cfi_erase(struct cdev *cdev, size_t count, loff_t offset,
         unsigned long start, end;
         int i, ret = 0;
 
-	debug("%s: erase 0x%08lx (size %d)\n", __func__, offset, count);
+	debug("%s: erase 0x%08llx (size %zu)\n", __func__, offset, count);
 
         start = find_sector(finfo, (unsigned long)finfo->base + offset);
         end   = find_sector(finfo, (unsigned long)finfo->base + offset +
@@ -633,7 +633,7 @@ static int cfi_protect(struct cdev *cdev, size_t count, loff_t offset, int prot)
 	int i, ret = 0;
 	const char *action = (prot? "protect" : "unprotect");
 
-	printf("%s: %s 0x%p (size %d)\n", __func__,
+	printf("%s: %s 0x%p (size %zu)\n", __func__,
 	       action, finfo->base + offset, count);
 
 	start = find_sector(finfo, (unsigned long)finfo->base + offset);
@@ -654,7 +654,8 @@ static ssize_t cfi_write(struct cdev *cdev, const void *buf, size_t count, loff_
         struct flash_info *finfo = (struct flash_info *)cdev->priv;
         int ret;
 
-	debug("cfi_write: buf=0x%p addr=0x%08lx count=0x%08x\n",buf, finfo->base + offset, count);
+	debug("cfi_write: buf=0x%p addr=0x%p count=0x%08zx\n",
+			buf, finfo->base + offset, count);
 
 	ret = write_buff(finfo, buf, (unsigned long)finfo->base + offset, count);
 	return ret == 0 ? count : -1;
@@ -840,7 +841,10 @@ void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
 
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
-	debug("%s: %p %lX %X => %p %llX\n", __FUNCTION__, info, sect, offset, addr, cword);
+
+	debug("%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
+			info, sect, offset, addr, cword);
+
 	flash_write_word(info, cword, addr);
 }
 
@@ -862,7 +866,7 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 		debug ("is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
 		retval = (flash_read16(addr) == cword);
 	} else if (bankwidth_is_4(info)) {
-		debug ("is= %8.8lx %8.8lx\n", flash_read32(addr), (u32)cword);
+		debug ("is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
 		retval = (flash_read32(addr) == cword);
 	} else if (bankwidth_is_8(info)) {
 #ifdef DEBUG
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 8f818ba..944cdde 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -29,12 +29,16 @@ typedef unsigned long flash_sect_t;
 
 #if   defined(CONFIG_DRIVER_CFI_BANK_WIDTH_8)
 typedef u64 cfiword_t;
+#define CFI_WORD_FMT	"0x%016llx"
 #elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_4)
 typedef u32 cfiword_t;
+#define CFI_WORD_FMT	"0x%08x"
 #elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_2)
 typedef u16 cfiword_t;
+#define CFI_WORD_FMT	"0x%04x"
 #else
 typedef u8 cfiword_t;
+#define CFI_WORD_FMT	"0x%02x"
 #endif
 
 struct cfi_cmd_set;
diff --git a/fs/tftp.c b/fs/tftp.c
index 98cbb37..b40353b 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -512,7 +512,7 @@ static int tftp_write(struct device_d *_dev, FILE *f, const void *inbuf,
 	size_t size, now;
 	int ret;
 
-	debug("%s: %d\n", __func__, insize);
+	debug("%s: %zu\n", __func__, insize);
 
 	size = insize;
 
@@ -547,7 +547,7 @@ static int tftp_read(struct device_d *dev, FILE *f, void *buf, size_t insize)
 	size_t outsize = 0, now;
 	int ret;
 
-	debug("%s %d\n", __func__, insize);
+	debug("%s %zu\n", __func__, insize);
 
 	tftp_timer_reset(priv);
 
diff --git a/lib/gui/bmp.c b/lib/gui/bmp.c
index fce0e69..6bf8cd0 100644
--- a/lib/gui/bmp.c
+++ b/lib/gui/bmp.c
@@ -24,7 +24,7 @@ struct image *bmp_open(char *inbuf, int insize)
 	img->bits_per_pixel = le16_to_cpu(bmp->header.bit_count);
 
 	pr_debug("bmp: %d x %d  x %d data@0x%p\n", img->width, img->height,
-		 img->bit_per_pixel, img->data);
+		 img->bits_per_pixel, img->data);
 
 	return img;
 }
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 4649280..db85720 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -30,7 +30,7 @@ void *xmalloc(size_t size)
 	if (!(p = malloc(size)))
 		panic("ERROR: out of memory\n");
 
-	debug("xmalloc %p (size %d)\n", p, size);
+	debug("xmalloc %p (size %zu)\n", p, size);
 
 	return p;
 }
@@ -43,7 +43,7 @@ void *xrealloc(void *ptr, size_t size)
 	if (!(p = realloc(ptr, size)))
 		panic("ERROR: out of memory\n");
 
-	debug("xrealloc %p -> %p (size %d)\n", ptr, p, size);
+	debug("xrealloc %p -> %p (size %zu)\n", ptr, p, size);
 
 	return p;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
