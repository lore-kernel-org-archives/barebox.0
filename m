Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z6xIt-0005Pz-CD
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:42:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:05 +0200
Message-Id: <1434962466-23590-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
References: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] mtd: cfi-flash: Coding style cleanup
To: Barebox List <barebox@lists.infradead.org>

- use consistent variable types (drop uchar, ushort and friends)
- remove whitespace between functions and opening brace
- Add some blank lines to rectify code
- drop 'rc' and 'retcode' and use 'ret' consistently
- Do not put variable assignment into if()
- drop unncessary braces

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c       | 276 +++++++++++++++++++++-----------------
 drivers/mtd/nor/cfi_flash.h       | 111 +++++++--------
 drivers/mtd/nor/cfi_flash_amd.c   |  41 +++---
 drivers/mtd/nor/cfi_flash_intel.c | 103 +++++++-------
 4 files changed, 283 insertions(+), 248 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 021f3b9..b93c663 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -59,7 +59,9 @@
  *
  */
 
-static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
+static unsigned int flash_offset_cfi[2] = {
+	FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT
+};
 
 /*
  * Check if chip width is defined. If not, start detecting with 8bit.
@@ -73,7 +75,7 @@ static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
  * Functions
  */
 
-static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
+static void flash_add_byte(struct flash_info *info, cfiword_t *cword, u8 c)
 {
 	if (bankwidth_is_1(info)) {
 		*cword = c;
@@ -95,7 +97,7 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 #endif
 }
 
-static int flash_write_cfiword (struct flash_info *info, ulong dest,
+static int flash_write_cfiword(struct flash_info *info, unsigned long dest,
 				cfiword_t cword)
 {
 	void *dstaddr = (void *)dest;
@@ -120,12 +122,12 @@ static int flash_write_cfiword (struct flash_info *info, ulong dest,
 
 	flash_write_word(info, cword, (void *)dest);
 
-	return flash_status_check (info, find_sector (info, dest),
+	return flash_status_check(info, find_sector (info, dest),
 					info->write_tout, "write");
 }
 
 #ifdef DEBUG
-static void flash_printqry (struct cfi_qry *qry)
+static void flash_printqry(struct cfi_qry *qry)
 {
 	u8 *p = (u8 *)qry;
 	int x, y;
@@ -151,9 +153,9 @@ static void flash_printqry (struct cfi_qry *qry)
 /*
  * read a character at a port width address
  */
-uchar flash_read_uchar (struct flash_info *info, uint offset)
+u8 flash_read_uchar(struct flash_info *info, unsigned int offset)
 {
-	uchar *cp = flash_make_addr(info, 0, offset);
+	u8 *cp = flash_make_addr(info, 0, offset);
 #if defined __LITTLE_ENDIAN
 	return flash_read8(cp);
 #else
@@ -165,10 +167,11 @@ uchar flash_read_uchar (struct flash_info *info, uint offset)
  * read a long word by picking the least significant byte of each maximum
  * port size word. Swap for ppc format.
  */
-static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint offset)
+static unsigned long flash_read_long(struct flash_info *info, flash_sect_t sect,
+		unsigned int offset)
 {
-	uchar *addr;
-	ulong retval;
+	u8 *addr;
+	unsigned long retval;
 	int x;
 
 	addr = flash_make_addr (info, sect, offset);
@@ -200,14 +203,14 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 u32 jedec_read_mfr(struct flash_info *info)
 {
 	int bank = 0;
-	uchar mfr;
+	u8 mfr;
 
 	/* According to JEDEC "Standard Manufacturer's Identification Code"
 	 * (http://www.jedec.org/download/search/jep106W.pdf)
 	 * several first banks can contain 0x7f instead of actual ID
 	 */
 	do {
-		mfr = flash_read_uchar (info,
+		mfr = flash_read_uchar(info,
 				(bank << 8) | FLASH_OFFSET_MANUFACTURER_ID);
 		bank++;
 	} while (mfr == FLASH_ID_CONTINUATION);
@@ -215,7 +218,7 @@ u32 jedec_read_mfr(struct flash_info *info)
 	return mfr;
 }
 
-static void flash_read_cfi (struct flash_info *info, void *buf,
+static void flash_read_cfi(struct flash_info *info, void *buf,
 		unsigned int start, size_t len)
 {
 	u8 *p = buf;
@@ -238,8 +241,9 @@ static int flash_detect_width(struct flash_info *info, struct cfi_qry *qry)
 			flash_write_cmd(info, 0, 0, AMD_CMD_RESET);
 			flash_write_cmd(info, 0, 0, FLASH_CMD_RESET);
 
-			for (cfi_offset = 0; cfi_offset < sizeof(flash_offset_cfi) / sizeof(uint);
-					cfi_offset++) {
+			for (cfi_offset = 0;
+			     cfi_offset < sizeof(flash_offset_cfi) / sizeof(unsigned int);
+			     cfi_offset++) {
 
 				flash_write_cmd(info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
 
@@ -295,7 +299,7 @@ static int flash_detect_size(struct flash_info *info)
 	unsigned long sector;
 	unsigned long tmp;
 	int size_ratio;
-	uchar num_erase_regions;
+	int num_erase_regions;
 	int erase_region_size;
 	int erase_region_count;
 	int cur_offset = 0;
@@ -309,7 +313,7 @@ static int flash_detect_size(struct flash_info *info)
 #endif
 
 	/* first only malloc space for the first sector */
-	info->start = xmalloc(sizeof(ulong));
+	info->start = xmalloc(sizeof(*info->eraseregions));
 
 	info->start[0] = base;
 	info->protect = 0;
@@ -323,14 +327,14 @@ static int flash_detect_size(struct flash_info *info)
 	num_erase_regions = qry.num_erase_regions;
 
 	if (info->ext_addr) {
-		info->cfi_version = (ushort) flash_read_uchar (info,
+		info->cfi_version = (u16)flash_read_uchar (info,
 					info->ext_addr + 3) << 8;
-		info->cfi_version |= (ushort) flash_read_uchar (info,
+		info->cfi_version |= (u16)flash_read_uchar (info,
 					info->ext_addr + 4);
 	}
 
 #ifdef DEBUG
-	flash_printqry (&qry);
+	flash_printqry(&qry);
 #endif
 
 	switch (info->vendor) {
@@ -352,7 +356,7 @@ static int flash_detect_size(struct flash_info *info)
 	}
 
 	info->cfi_cmd_set->flash_read_jedec_ids (info);
-	flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
+	flash_write_cmd(info, 0, info->cfi_offset, FLASH_CMD_CFI);
 
 	info->cfi_cmd_set->flash_fixup (info, &qry);
 
@@ -363,17 +367,20 @@ static int flash_detect_size(struct flash_info *info)
 	dev_dbg(info->dev, "cfi version is 0x%04x\n", info->cfi_version);
 
 	size_ratio = info->portwidth / info->chipwidth;
+
 	/* if the chip is x8/x16 reduce the ratio by half */
 	if ((info->interface == FLASH_CFI_X8X16)
 	    && (info->chipwidth == FLASH_CFI_BY8)
 	    && (size_ratio != 1)) {
 		size_ratio >>= 1;
 	}
+
 	dev_dbg(info->dev, "size_ratio %d port %d bits chip %d bits\n",
 	       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 	       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
 	dev_dbg(info->dev, "found %d erase regions\n", num_erase_regions);
-	info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
+
+	info->eraseregions = xzalloc(sizeof(*info->eraseregions) * num_erase_regions);
 	info->numeraseregions = num_erase_regions;
 	sect_cnt = 0;
 	sector = base;
@@ -403,8 +410,10 @@ static int flash_detect_size(struct flash_info *info)
 		cur_offset += erase_region_size * size_ratio * erase_region_count;
 
 		/* increase the space malloced for the sector start addresses */
-		info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
-		info->protect = xrealloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
+		info->start = xrealloc(info->start, sizeof(*info->eraseregions) *
+				(erase_region_count + sect_cnt));
+		info->protect = xrealloc(info->protect, sizeof(*info->eraseregions) *
+				(erase_region_count + sect_cnt));
 
 		for (j = 0; j < erase_region_count; j++) {
 			info->start[sect_cnt] = sector;
@@ -440,10 +449,11 @@ static int flash_detect_size(struct flash_info *info)
 	info->write_tout = 1 << (qry.word_write_timeout_typ +
 				 qry.word_write_timeout_max);
 	info->flash_id = FLASH_MAN_CFI;
+
 	if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8))
 		info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
 
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
+	flash_write_cmd(info, 0, 0, info->cmd_reset);
 
 	return 0;
 }
@@ -452,7 +462,7 @@ static int flash_detect_size(struct flash_info *info)
  * when the passed address is greater or equal to the sector address
  * we have a match
  */
-flash_sect_t find_sector (struct flash_info *info, ulong addr)
+flash_sect_t find_sector(struct flash_info *info, unsigned long addr)
 {
 	flash_sect_t sector;
 
@@ -460,6 +470,7 @@ flash_sect_t find_sector (struct flash_info *info, ulong addr)
 		if (addr >= info->start[sector])
 			break;
 	}
+
 	return sector;
 }
 
@@ -488,37 +499,40 @@ out:
         return ret;
 }
 
-static int write_buff(struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
+static int write_buff(struct flash_info *info, const u8 *src,
+		unsigned long addr, unsigned long cnt)
 {
-	ulong wp;
-	uchar *p;
+	unsigned long wp;
+	u8 *p;
 	int aln;
 	cfiword_t cword;
-	int i, rc;
+	int i, ret;
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
 	int buffered_size;
 #endif
 	/* get lower aligned address */
-	wp = (addr & ~(info->portwidth - 1));
+	wp = addr & ~(info->portwidth - 1);
 
 	/* handle unaligned start */
-	if ((aln = addr - wp) != 0) {
+	aln = addr - wp;
+	if (aln) {
 		cword = 0;
-		p = (uchar*)wp;
+		p = (u8 *)wp;
 		for (i = 0; i < aln; ++i)
-			flash_add_byte (info, &cword, flash_read8(p + i));
+			flash_add_byte(info, &cword, flash_read8(p + i));
 
 		for (; (i < info->portwidth) && (cnt > 0); i++) {
-			flash_add_byte (info, &cword, *src++);
+			flash_add_byte(info, &cword, *src++);
 			cnt--;
 		}
+
 		for (; (cnt == 0) && (i < info->portwidth); ++i)
-			flash_add_byte (info, &cword, flash_read8(p + i));
+			flash_add_byte(info, &cword, flash_read8(p + i));
 
-		rc = flash_write_cfiword (info, wp, cword);
-		if (rc != 0)
-			return rc;
+		ret = flash_write_cfiword(info, wp, cword);
+		if (ret)
+			return ret;
 
 		wp += i;
 	}
@@ -531,12 +545,17 @@ static int write_buff(struct flash_info *info, const uchar * src, ulong addr, ul
 		/* prohibit buffer write when buffer_size is 1 */
 		if (info->buffer_size == 1) {
 			cword = 0;
+
 			for (i = 0; i < info->portwidth; i++)
-				flash_add_byte (info, &cword, *src++);
-			if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
-				return rc;
+				flash_add_byte(info, &cword, *src++);
+
+			ret = flash_write_cfiword(info, wp, cword);
+			if (ret)
+				return ret;
+
 			wp += info->portwidth;
 			cnt -= info->portwidth;
+
 			continue;
 		}
 
@@ -545,9 +564,9 @@ static int write_buff(struct flash_info *info, const uchar * src, ulong addr, ul
 		if (i > cnt)
 			i = cnt;
 
-		rc = info->cfi_cmd_set->flash_write_cfibuffer(info, wp, src, i);
-		if (rc)
-			return rc;
+		ret = info->cfi_cmd_set->flash_write_cfibuffer(info, wp, src, i);
+		if (ret)
+			return ret;
 
 		i -= i & (info->portwidth - 1);
 		wp += i;
@@ -557,64 +576,67 @@ static int write_buff(struct flash_info *info, const uchar * src, ulong addr, ul
 #else
 	while (cnt >= info->portwidth) {
 		cword = 0;
-		for (i = 0; i < info->portwidth; i++) {
-			flash_add_byte (info, &cword, *src++);
-		}
-		if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
-			return rc;
+
+		for (i = 0; i < info->portwidth; i++)
+			flash_add_byte(info, &cword, *src++);
+
+		ret = flash_write_cfiword(info, wp, cword);
+		if (ret)
+			return ret;
+
 		wp += info->portwidth;
 		cnt -= info->portwidth;
 	}
 #endif /* CONFIG_CFI_BUFFER_WRITE */
-	if (cnt == 0) {
+	if (cnt == 0)
 		return 0;
-	}
 
 	/*
 	 * handle unaligned tail bytes
 	 */
 	cword = 0;
-	p = (uchar*)wp;
+	p = (u8 *)wp;
+
 	for (i = 0; (i < info->portwidth) && (cnt > 0); ++i) {
-		flash_add_byte (info, &cword, *src++);
+		flash_add_byte(info, &cword, *src++);
 		--cnt;
 	}
-	for (; i < info->portwidth; ++i) {
-		flash_add_byte (info, &cword, flash_read8(p + i));
-	}
 
-	return flash_write_cfiword (info, wp, cword);
+	for (; i < info->portwidth; ++i)
+		flash_add_byte(info, &cword, flash_read8(p + i));
+
+	return flash_write_cfiword(info, wp, cword);
 }
 
-static int flash_real_protect (struct flash_info *info, long sector, int prot)
+static int flash_real_protect(struct flash_info *info, long sector, int prot)
 {
-	int retcode = 0;
-
-	retcode = info->cfi_cmd_set->flash_real_protect(info, sector, prot);
+	int ret;
 
-	if (retcode)
-		return retcode;
+	ret = info->cfi_cmd_set->flash_real_protect(info, sector, prot);
+	if (ret)
+		return ret;
 
-	if ((retcode =
-	     flash_status_check (info, sector, info->erase_blk_tout,
-				      prot ? "protect" : "unprotect")) == 0) {
+	ret = flash_status_check(info, sector, info->erase_blk_tout,
+				      prot ? "protect" : "unprotect");
+	if (ret)
+		return ret;
 
-		info->protect[sector] = prot;
+	info->protect[sector] = prot;
 
-		/*
-		 * On some of Intel's flash chips (marked via legacy_unlock)
-		 * unprotect unprotects all locking.
-		 */
-		if ((prot == 0) && (info->legacy_unlock)) {
-			flash_sect_t i;
+	/*
+	 * On some of Intel's flash chips (marked via legacy_unlock)
+	 * unprotect unprotects all locking.
+	 */
+	if (prot == 0 && info->legacy_unlock) {
+		flash_sect_t i;
 
-			for (i = 0; i < info->sector_count; i++) {
-				if (info->protect[i])
-					flash_real_protect (info, i, 1);
-			}
+		for (i = 0; i < info->sector_count; i++) {
+			if (info->protect[i])
+				flash_real_protect (info, i, 1);
 		}
 	}
-	return retcode;
+
+	return 0;
 }
 
 static int cfi_mtd_protect(struct flash_info *finfo, loff_t offset, size_t len, int prot)
@@ -626,12 +648,12 @@ static int cfi_mtd_protect(struct flash_info *finfo, loff_t offset, size_t len,
 	end   = find_sector(finfo, (unsigned long)finfo->base + offset + len - 1);
 
 	for (i = start; i <= end; i++) {
-		ret = flash_real_protect (finfo, i, prot);
+		ret = flash_real_protect(finfo, i, prot);
 		if (ret)
-			goto out;
+			return ret;
 	}
-out:
-	return ret;
+
+	return 0;
 }
 
 static int cfi_mtd_lock(struct mtd_info *mtd, loff_t offset, size_t len)
@@ -654,50 +676,53 @@ static void cfi_info (struct device_d* dev)
 	int i;
 
 	if (info->flash_id != FLASH_MAN_CFI) {
-		puts ("missing or unknown FLASH type\n");
+		printf("missing or unknown FLASH type\n");
 		return;
 	}
 
-	printf ("CFI conformant FLASH (%d x %d)",
+	printf("CFI conformant FLASH (%d x %d)",
 		(info->portwidth << 3), (info->chipwidth << 3));
-	printf ("  Size: %ld MB in %d Sectors\n",
+	printf("  Size: %ld MB in %d Sectors\n  ",
 		info->size >> 20, info->sector_count);
-	printf ("  ");
+
 	switch (info->vendor) {
 		case CFI_CMDSET_INTEL_STANDARD:
-			printf ("Intel Standard");
+			printf("Intel Standard");
 			break;
 		case CFI_CMDSET_INTEL_EXTENDED:
-			printf ("Intel Extended");
+			printf("Intel Extended");
 			break;
 		case CFI_CMDSET_AMD_STANDARD:
-			printf ("AMD Standard");
+			printf("AMD Standard");
 			break;
 		case CFI_CMDSET_AMD_EXTENDED:
-			printf ("AMD Extended");
+			printf("AMD Extended");
 			break;
 		default:
-			printf ("Unknown (%d)", info->vendor);
+			printf("Unknown (%d)", info->vendor);
 			break;
 	}
-	printf (" command set, Manufacturer ID: 0x%02X, Device ID: 0x%02X",
+	printf(" command set, Manufacturer ID: 0x%02X, Device ID: 0x%02X",
 		info->manufacturer_id, info->device_id);
-	if (info->device_id == 0x7E) {
+
+	if (info->device_id == 0x7E)
 		printf("%04X", info->device_id2);
-	}
-	printf ("\n  Erase timeout: %ld ms, write timeout: %ld us\n",
+
+	printf("\n  Erase timeout: %ld ms, write timeout: %ld us\n",
 		info->erase_blk_tout,
 		info->write_tout);
+
 	if (info->buffer_size > 1) {
-		printf ("  Buffer write timeout: %ld us, buffer size: %d bytes\n",
+		printf("  Buffer write timeout: %ld us, buffer size: %d bytes\n",
 		info->buffer_write_tout,
 		info->buffer_size);
 	}
 
-	puts ("\n  Sector Start Addresses:");
+	printf("\n  Sector Start Addresses:");
+
 	for (i = 0; i < info->sector_count; ++i) {
 		if ((i % 5) == 0)
-			printf ("\n");
+			printf("\n");
 #ifdef CFG_FLASH_EMPTY_INFO
 	{
 		int k;
@@ -713,7 +738,7 @@ static void cfi_info (struct device_d* dev)
 		else
 			size = info->start[0] + info->size - info->start[i];
 		erased = 1;
-		flash = (volatile unsigned long *) info->start[i];
+		flash = (volatile unsigned long *)info->start[i];
 		size = size >> 2;	/* divide by 4 for longword access */
 		for (k = 0; k < size; k++) {
 			if (*flash++ != 0xffffffff) {
@@ -723,13 +748,13 @@ static void cfi_info (struct device_d* dev)
 		}
 
 		/* print empty and read-only info */
-		printf ("  %08lX %c %s ",
+		printf("  %08lX %c %s ",
 			info->start[i],
 			erased ? 'E' : ' ',
 			info->protect[i] ? "RO" : "  ");
 	}
 #else	/* ! CFG_FLASH_EMPTY_INFO */
-		printf ("  %08lX   %s ",
+		printf("  %08lX   %s ",
 			info->start[i],
 			info->protect[i] ? "RO" : "  ");
 #endif
@@ -771,8 +796,8 @@ static void flash_read_factory_serial (struct flash_info *info, void *buffer, in
 
 #endif
 
-int flash_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt)
+int flash_status_check(struct flash_info *info, flash_sect_t sector,
+			       u64 tout, char *prompt)
 {
 	return info->cfi_cmd_set->flash_status_check(info, sector, tout, prompt);
 }
@@ -781,10 +806,10 @@ int flash_status_check (struct flash_info *info, flash_sect_t sector,
  *  wait for XSR.7 to be set. Time out with an error if it does not.
  *  This routine does not set the flash to read-array mode.
  */
-int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt)
+int flash_generic_status_check(struct flash_info *info, flash_sect_t sector,
+			       u64 tout, char *prompt)
 {
-	uint64_t start;
+	u64 start;
 
         tout *= 1000000;
 
@@ -795,11 +820,14 @@ int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 			dev_err(info->dev, "Flash %s timeout at address %lx data %lx\n",
 				prompt, info->start[sector],
 				flash_read_long (info, sector, 0));
-			flash_write_cmd (info, sector, 0, info->cmd_reset);
+
+			flash_write_cmd(info, sector, 0, info->cmd_reset);
+
 			return -ETIMEDOUT;
 		}
-		udelay (1);		/* also triggers watchdog */
+		udelay(1);		/* also triggers watchdog */
 	}
+
 	return 0;
 }
 
@@ -820,10 +848,9 @@ void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf)
  * Write a proper sized command to the correct address
  */
 void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
+				unsigned int offset, u32 cmd)
 {
-
-	uchar *addr;
+	u8 *addr;
 	cfiword_t cword;
 
 	addr = flash_make_addr (info, sect, offset);
@@ -836,7 +863,7 @@ void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
 }
 
 int flash_isequal(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
+				unsigned int offset, u32 cmd)
 {
 	void *addr;
 	cfiword_t cword;
@@ -846,6 +873,7 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 	flash_make_cmd (info, cmd, &cword);
 
 	dev_vdbg(info->dev, "is= cmd %x(%c) addr %p ", cmd, cmd, addr);
+
 	if (bankwidth_is_1(info)) {
 		dev_vdbg(info->dev, "is= %x %x\n", flash_read8(addr), (u8)cword);
 		retval = (flash_read8(addr) == cword);
@@ -858,14 +886,15 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 	} else if (bankwidth_is_8(info)) {
 		dev_vdbg(info->dev, "is= %16.16llx %16.16llx\n", flash_read64(addr), (u64)cword);
 		retval = (flash_read64(addr) == cword);
-	} else
+	} else {
 		retval = 0;
+	}
 
 	return retval;
 }
 
 int flash_isset(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd)
+				unsigned int offset, u32 cmd)
 {
 	void *addr = flash_make_addr (info, sect, offset);
 	cfiword_t cword;
@@ -880,14 +909,15 @@ int flash_isset(struct flash_info *info, flash_sect_t sect,
 		retval = ((flash_read32(addr) & cword) == cword);
 	} else if (bankwidth_is_8(info)) {
 		retval = ((flash_read64(addr) & cword) == cword);
-	} else
+	} else {
 		retval = 0;
+	}
 
 	return retval;
 }
 
 static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
-		size_t *retlen, u_char *buf)
+		size_t *retlen, u8 *buf)
 {
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 
@@ -898,7 +928,7 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 }
 
 static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
-		size_t *retlen, const u_char *buf)
+		size_t *retlen, const u8 *buf)
 {
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 	int ret;
@@ -915,7 +945,6 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	int ret;
 
 	ret = cfi_erase(info, instr->len, instr->addr);
-
 	if (ret) {
 		instr->state = MTD_ERASE_FAILED;
 		return -EIO;
@@ -930,7 +959,7 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 static void cfi_init_mtd(struct flash_info *info)
 {
 	struct mtd_info *mtd = &info->mtd;
-	u_int32_t erasesize;
+	u32 erasesize;
 	int i;
 
 	mtd->read = cfi_mtd_read;
@@ -941,10 +970,11 @@ static void cfi_init_mtd(struct flash_info *info)
 	mtd->size = info->size;
 
 	erasesize = 0;
-	for (i=0; i < info->numeraseregions; i++) {
+	for (i = 0; i < info->numeraseregions; i++) {
 		if (erasesize < info->eraseregions[i].erasesize)
 			erasesize = info->eraseregions[i].erasesize;
 	}
+
 	mtd->erasesize = erasesize;
 
 	mtd->writesize = 1;
@@ -958,12 +988,12 @@ static void cfi_init_mtd(struct flash_info *info)
 	add_mtd_device(mtd, "nor", DEVICE_ID_DYNAMIC);
 }
 
-static int cfi_probe (struct device_d *dev)
+static int cfi_probe(struct device_d *dev)
 {
 	struct flash_info *info = xzalloc(sizeof(*info));
 	int ret;
 
-	dev->priv = (void *)info;
+	dev->priv = info;
 
 	/* Init: no FLASHes known */
 	info->flash_id = FLASH_UNKNOWN;
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 25d2e58..6d975b9 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -49,32 +49,32 @@ struct cfi_cmd_set;
 
 struct flash_info {
 	struct device_d *dev;
-	ulong	size;			/* total bank size in bytes		*/
-	ushort	sector_count;		/* number of erase units		*/
-	ulong	flash_id;		/* combined device & manufacturer code	*/
-	ulong	*start;			/* physical sector start addresses	*/
-	uchar	*protect;		/* sector protection status		*/
-
-	uchar	portwidth;		/* the width of the port		*/
-	uchar	chipwidth;		/* the width of the chip		*/
-	uchar	chip_lsb;		/* extra Least Significant Bit in the	*/
+	unsigned long size;		/* total bank size in bytes		*/
+	unsigned int sector_count;	/* number of erase units		*/
+	unsigned long flash_id;		/* combined device & manufacturer code	*/
+	unsigned long *start;		/* physical sector start addresses	*/
+	unsigned char *protect;		/* sector protection status		*/
+
+	unsigned int portwidth;		/* the width of the port		*/
+	unsigned int chipwidth;		/* the width of the chip		*/
+	unsigned int chip_lsb;		/* extra Least Significant Bit in the	*/
 					/*   address of chip.			*/
-	ushort	buffer_size;		/* # of bytes in write buffer		*/
-	ulong	erase_blk_tout;		/* maximum block erase timeout		*/
-	ulong	write_tout;		/* maximum write timeout		*/
-	ulong	buffer_write_tout;	/* maximum buffer write timeout		*/
-	ushort	vendor;			/* the primary vendor id		*/
-	ushort	cmd_reset;		/* vendor specific reset command	*/
-	ushort	interface;		/* used for x8/x16 adjustments		*/
-	ushort	legacy_unlock;		/* support Intel legacy (un)locking	*/
-	uchar	manufacturer_id;	/* manufacturer id			*/
-	ushort	device_id;		/* device id				*/
-	ushort	device_id2;		/* extended device id			*/
-	ushort	ext_addr;		/* extended query table address		*/
-	ushort	cfi_version;		/* cfi version				*/
-	ushort	cfi_offset;		/* offset for cfi query 		*/
-	ulong	addr_unlock1;		/* unlock address 1 for AMD flash roms	*/
-	ulong	addr_unlock2;		/* unlock address 2 for AMD flash roms	*/
+	unsigned int buffer_size;	/* # of bytes in write buffer		*/
+	unsigned long erase_blk_tout;	/* maximum block erase timeout		*/
+	unsigned long write_tout;	/* maximum write timeout		*/
+	unsigned long buffer_write_tout;/* maximum buffer write timeout		*/
+	unsigned int vendor;		/* the primary vendor id		*/
+	unsigned int cmd_reset;		/* vendor specific reset command	*/
+	unsigned int interface;		/* used for x8/x16 adjustments		*/
+	unsigned int legacy_unlock;	/* support Intel legacy (un)locking	*/
+	unsigned int manufacturer_id;	/* manufacturer id			*/
+	unsigned int device_id;		/* device id				*/
+	unsigned int device_id2;	/* extended device id			*/
+	unsigned int ext_addr;		/* extended query table address		*/
+	unsigned int cfi_version;	/* cfi version				*/
+	unsigned int cfi_offset;	/* offset for cfi query 		*/
+	unsigned long addr_unlock1;	/* unlock address 1 for AMD flash roms	*/
+	unsigned long addr_unlock2;	/* unlock address 2 for AMD flash roms	*/
 	struct cfi_cmd_set *cfi_cmd_set;
 	struct mtd_info mtd;
 	int numeraseregions;
@@ -118,14 +118,16 @@ struct cfi_pri_hdr {
 
 
 struct cfi_cmd_set {
-	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
-	int (*flash_erase_one) (struct flash_info *info, long sect);
-	int (*flash_is_busy) (struct flash_info *info, flash_sect_t sect);
-	void (*flash_read_jedec_ids) (struct flash_info *info);
-	void (*flash_prepare_write) (struct flash_info *info);
-	int (*flash_status_check) (struct flash_info *info, flash_sect_t sector, uint64_t tout, char *prompt);
-	int (*flash_real_protect) (struct flash_info *info, long sector, int prot);
-	void (*flash_fixup) (struct flash_info *info, struct cfi_qry *qry);
+	int (*flash_write_cfibuffer)(struct flash_info *info, unsigned long dest,
+			const u8 *cp, int len);
+	int (*flash_erase_one)(struct flash_info *info, long sect);
+	int (*flash_is_busy)(struct flash_info *info, flash_sect_t sect);
+	void (*flash_read_jedec_ids)(struct flash_info *info);
+	void (*flash_prepare_write)(struct flash_info *info);
+	int (*flash_status_check)(struct flash_info *info, flash_sect_t sector,
+			u64 tout, char *prompt);
+	int (*flash_real_protect)(struct flash_info *info, long sector, int prot);
+	void (*flash_fixup)(struct flash_info *info, struct cfi_qry *qry);
 };
 
 extern struct cfi_cmd_set cfi_cmd_set_intel;
@@ -241,17 +243,17 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 /* Prototypes */
 
 int flash_isset(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
+				unsigned int offset, u32 cmd);
 void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
-flash_sect_t find_sector (struct flash_info *info, ulong addr);
-int flash_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt);
-int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
-			       uint64_t tout, char *prompt);
+				unsigned int offset, u32 cmd);
+flash_sect_t find_sector(struct flash_info *info, unsigned long addr);
+int flash_status_check(struct flash_info *info, flash_sect_t sector,
+			       u64 tout, char *prompt);
+int flash_generic_status_check(struct flash_info *info, flash_sect_t sector,
+			       u64 tout, char *prompt);
 
 int flash_isequal(struct flash_info *info, flash_sect_t sect,
-				uint offset, u32 cmd);
+				unsigned int offset, u32 cmd);
 void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
 
 static inline void flash_write8(u8 value, void *addr)
@@ -298,12 +300,13 @@ static inline u64 flash_read64(void *addr)
 /*
  * create an address based on the offset and the port width
  */
-static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
+static inline u8 *flash_make_addr(struct flash_info *info, flash_sect_t sect,
+		unsigned int offset)
 {
-	return ((uchar *) (info->start[sect] + ((offset * info->portwidth) << info->chip_lsb)));
+	return ((u8 *)(info->start[sect] + ((offset * info->portwidth) << info->chip_lsb)));
 }
 
-uchar flash_read_uchar (struct flash_info *info, uint offset);
+u8 flash_read_uchar(struct flash_info *info, unsigned int offset);
 u32 jedec_read_mfr(struct flash_info *info);
 
 #ifdef CONFIG_DRIVER_CFI_BANK_WIDTH_1
@@ -342,21 +345,20 @@ static inline void flash_write_word(struct flash_info *info, cfiword_t datum, vo
 		flash_write64(datum, addr);
 }
 
-extern void flash_print_info (struct flash_info *);
-extern int flash_sect_erase (ulong addr_first, ulong addr_last);
-extern int flash_sect_protect (int flag, ulong addr_first, ulong addr_last);
+extern void flash_print_info(struct flash_info *);
+extern int flash_sect_erase(unsigned long addr_first, unsigned long addr_last);
+extern int flash_sect_protect(int flag, unsigned long addr_first,
+		unsigned long addr_last);
 
 /* common/flash.c */
-extern void flash_protect (int flag, ulong from, ulong to, struct flash_info *info);
-extern int flash_write (char *, ulong, ulong);
-extern struct flash_info *addr2info (ulong);
-//extern int write_buff (flash_info_t *info, const uchar *src, ulong addr, ulong cnt);
+extern void flash_protect(int flag, unsigned long from, unsigned long to,
+		struct flash_info *info);
+extern int flash_write(char *, unsigned long, unsigned long);
 
-/* board/?/flash.c */
 #if defined(CFG_FLASH_PROTECTION)
 extern int flash_real_protect(struct flash_info *info, long sector, int prot);
-extern void flash_read_user_serial(struct flash_info *info, void * buffer, int offset, int len);
-extern void flash_read_factory_serial(struct flash_info *info, void * buffer, int offset, int len);
+extern void flash_read_user_serial(struct flash_info *info, void *buffer, int offset, int len);
+extern void flash_read_factory_serial(struct flash_info *info, void *buffer, int offset, int len);
 #endif	/* CFG_FLASH_PROTECTION */
 
 /*-----------------------------------------------------------------------
@@ -712,4 +714,3 @@ extern void flash_read_factory_serial(struct flash_info *info, void * buffer, in
 #define FLASH_WRITE_TIMEOUT	500	/* timeout for writes  in ms		*/
 
 #endif /* __CFI_FLASH_H */
-
diff --git a/drivers/mtd/nor/cfi_flash_amd.c b/drivers/mtd/nor/cfi_flash_amd.c
index 45c59b9..9c44561 100644
--- a/drivers/mtd/nor/cfi_flash_amd.c
+++ b/drivers/mtd/nor/cfi_flash_amd.c
@@ -19,7 +19,7 @@ static void cfi_reverse_geometry(struct cfi_qry *qry)
 	}
 }
 
-static void flash_unlock_seq (struct flash_info *info)
+static void flash_unlock_seq(struct flash_info *info)
 {
 	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_UNLOCK_START);
 	flash_write_cmd (info, 0, info->addr_unlock2, AMD_CMD_UNLOCK_ACK);
@@ -31,7 +31,7 @@ static void flash_unlock_seq (struct flash_info *info)
  * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
  *
 */
-static void amd_read_jedec_ids (struct flash_info *info)
+static void amd_read_jedec_ids(struct flash_info *info)
 {
 	info->cmd_reset		= AMD_CMD_RESET;
 	info->manufacturer_id = 0;
@@ -62,20 +62,21 @@ static void amd_read_jedec_ids (struct flash_info *info)
 	udelay(1000); /* some flash are slow to respond */
 
 	info->manufacturer_id = jedec_read_mfr(info);
-	info->device_id = flash_read_uchar (info,
+	info->device_id = flash_read_uchar(info,
 					FLASH_OFFSET_DEVICE_ID);
 	if (info->device_id == 0x7E) {
 		/* AMD 3-byte (expanded) device ids */
-		info->device_id2 = flash_read_uchar (info,
+		info->device_id2 = flash_read_uchar(info,
 					FLASH_OFFSET_DEVICE_ID2);
 		info->device_id2 <<= 8;
-		info->device_id2 |= flash_read_uchar (info,
+		info->device_id2 |= flash_read_uchar(info,
 					FLASH_OFFSET_DEVICE_ID3);
 	}
 	flash_write_cmd(info, 0, 0, info->cmd_reset);
 }
 
-static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
+static int flash_toggle(struct flash_info *info, flash_sect_t sect,
+		unsigned int offset, u8 cmd)
 {
 	void *addr;
 	cfiword_t cword;
@@ -83,6 +84,7 @@ static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset
 
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
+
 	if (bankwidth_is_1(info)) {
 		retval = flash_read8(addr) != flash_read8(addr);
 	} else if (bankwidth_is_2(info)) {
@@ -92,8 +94,9 @@ static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset
 	} else if (bankwidth_is_8(info)) {
 		retval = ( (flash_read32( addr ) != flash_read32( addr )) ||
 			   (flash_read32(addr+4) != flash_read32(addr+4)) );
-	} else
+	} else {
 		retval = 0;
+	}
 
 	return retval;
 }
@@ -102,12 +105,12 @@ static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset
  * flash_is_busy - check to see if the flash is busy
  * This routine checks the status of the chip and returns true if the chip is busy
  */
-static int amd_flash_is_busy (struct flash_info *info, flash_sect_t sect)
+static int amd_flash_is_busy(struct flash_info *info, flash_sect_t sect)
 {
 	return flash_toggle (info, sect, 0, AMD_STATUS_TOGGLE);
 }
 
-static int amd_flash_erase_one (struct flash_info *info, long sect)
+static int amd_flash_erase_one(struct flash_info *info, long sect)
 {
 	flash_unlock_seq(info);
 	flash_write_cmd (info, 0, info->addr_unlock1, AMD_CMD_ERASE_START);
@@ -124,13 +127,12 @@ static void amd_flash_prepare_write(struct flash_info *info)
 }
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
-static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
-				  int len)
+static int amd_flash_write_cfibuffer(struct flash_info *info, unsigned long dest,
+		const u8 *cp, int len)
 {
 	flash_sect_t sector;
 	int cnt;
-	int retcode;
-	void *src = (void*)cp;
+	void *src = (void *)cp;
 	void *dst = (void *)dest;
 	cfiword_t cword;
 
@@ -170,18 +172,18 @@ static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const
 		}
 	}
 
-	flash_write_cmd (info, sector, 0, AMD_CMD_WRITE_BUFFER_CONFIRM);
-	retcode = flash_status_check (info, sector, info->buffer_write_tout,
+	flash_write_cmd(info, sector, 0, AMD_CMD_WRITE_BUFFER_CONFIRM);
+
+	return flash_status_check(info, sector, info->buffer_write_tout,
 					   "buffer write");
-	return retcode;
 }
 #else
 #define amd_flash_write_cfibuffer NULL
 #endif /* CONFIG_CFI_BUFFER_WRITE */
 
-static int amd_flash_real_protect (struct flash_info *info, long sector, int prot)
+static int amd_flash_real_protect(struct flash_info *info, long sector, int prot)
 {
-	if (info->manufacturer_id != (uchar)ATM_MANUFACT)
+	if (info->manufacturer_id != (u8)ATM_MANUFACT)
 		return 0;
 
 	if (prot) {
@@ -205,7 +207,7 @@ static int amd_flash_real_protect (struct flash_info *info, long sector, int pro
  * Manufacturer-specific quirks. Add workarounds for geometry
  * reversal, etc. here.
  */
-static void flash_fixup_amd (struct flash_info *info, struct cfi_qry *qry)
+static void flash_fixup_amd(struct flash_info *info, struct cfi_qry *qry)
 {
 	/* check if flash geometry needs reversal */
 	if (qry->num_erase_regions > 1) {
@@ -265,4 +267,3 @@ struct cfi_cmd_set cfi_cmd_set_amd = {
 	.flash_real_protect = amd_flash_real_protect,
 	.flash_fixup = amd_flash_fixup,
 };
-
diff --git a/drivers/mtd/nor/cfi_flash_intel.c b/drivers/mtd/nor/cfi_flash_intel.c
index dcf8d97..835734d 100644
--- a/drivers/mtd/nor/cfi_flash_intel.c
+++ b/drivers/mtd/nor/cfi_flash_intel.c
@@ -6,8 +6,8 @@
  *
  * Note: assume cfi->vendor, cfi->portwidth and cfi->chipwidth are correct
  *
-*/
-static void intel_read_jedec_ids (struct flash_info *info)
+ */
+static void intel_read_jedec_ids(struct flash_info *info)
 {
 	info->cmd_reset		= FLASH_CMD_RESET;
 	info->manufacturer_id = 0;
@@ -19,7 +19,7 @@ static void intel_read_jedec_ids (struct flash_info *info)
 	udelay(1000); /* some flash are slow to respond */
 
 	info->manufacturer_id = jedec_read_mfr(info);
-	info->device_id = flash_read_uchar (info,
+	info->device_id = flash_read_uchar(info,
 					FLASH_OFFSET_DEVICE_ID);
 	flash_write_cmd(info, 0, 0, info->cmd_reset);
 }
@@ -28,16 +28,16 @@ static void intel_read_jedec_ids (struct flash_info *info)
  * flash_is_busy - check to see if the flash is busy
  * This routine checks the status of the chip and returns true if the chip is busy
  */
-static int intel_flash_is_busy (struct flash_info *info, flash_sect_t sect)
+static int intel_flash_is_busy(struct flash_info *info, flash_sect_t sect)
 {
 	return !flash_isset (info, sect, 0, FLASH_STATUS_DONE);
 }
 
-static int intel_flash_erase_one (struct flash_info *info, long sect)
+static int intel_flash_erase_one(struct flash_info *info, long sect)
 {
-	flash_write_cmd (info, sect, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sect, 0, FLASH_CMD_BLOCK_ERASE);
-	flash_write_cmd (info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
+	flash_write_cmd(info, sect, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd(info, sect, 0, FLASH_CMD_BLOCK_ERASE);
+	flash_write_cmd(info, sect, 0, FLASH_CMD_ERASE_CONFIRM);
 
 	return flash_status_check(info, sect, info->erase_blk_tout, "erase");
 }
@@ -49,26 +49,26 @@ static void intel_flash_prepare_write(struct flash_info *info)
 }
 
 #ifdef CONFIG_CFI_BUFFER_WRITE
-static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, const uchar * cp,
-				  int len)
+static int intel_flash_write_cfibuffer(struct flash_info *info,
+		unsigned long dest, const u8 *cp, int len)
 {
 	flash_sect_t sector;
 	int cnt;
-	int retcode;
+	int ret;
 	void *src = (void*)cp;
 	void *dst = (void *)dest;
 	/* reduce width due to possible alignment problems */
 	const unsigned long ptr = (unsigned long)dest | (unsigned long)cp | info->portwidth;
 	const int width = ptr & -ptr;
 
-	sector = find_sector (info, dest);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
+	sector = find_sector(info, dest);
+	flash_write_cmd(info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd(info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
 
-	retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
+	ret = flash_generic_status_check(info, sector, info->buffer_write_tout,
 					   "write to buffer");
-	if (retcode)
-		return retcode;
+	if (ret)
+		return ret;
 
 	/* reduce the number of loops by the width of the port	*/
 	cnt = len / width;
@@ -95,66 +95,70 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 		}
 	}
 
-	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_BUFFER_CONFIRM);
-	retcode = flash_status_check (info, sector,
+	flash_write_cmd(info, sector, 0, FLASH_CMD_WRITE_BUFFER_CONFIRM);
+	ret = flash_status_check(info, sector,
 					   info->buffer_write_tout,
 					   "buffer write");
-	return retcode;
+	return ret;
 }
 #else
 #define intel_flash_write_cfibuffer NULL
 #endif /* CONFIG_CFI_BUFFER_WRITE */
 
-static int intel_flash_status_check (struct flash_info *info, flash_sect_t sector,
-				    uint64_t tout, char *prompt)
+static int intel_flash_status_check(struct flash_info *info, flash_sect_t sector,
+				    u64 tout, char *prompt)
 {
-	int retcode;
+	int ret;
 
-	retcode = flash_generic_status_check(info, sector, tout, prompt);
-	if (!retcode && !flash_isequal(info, sector, 0, FLASH_STATUS_DONE)) {
-		retcode = -EINVAL;
-		printf ("Flash %s error at address %lx\n", prompt,
+	ret = flash_generic_status_check(info, sector, tout, prompt);
+	if (!ret && !flash_isequal(info, sector, 0, FLASH_STATUS_DONE)) {
+		ret = -EINVAL;
+		printf("Flash %s error at address %lx\n", prompt,
 			info->start[sector]);
-		if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
-			puts ("Command Sequence Error.\n");
+
+		if (flash_isset(info, sector, 0, FLASH_STATUS_ECLBS | FLASH_STATUS_PSLBS)) {
+			printf("Command Sequence Error.\n");
 		} else if (flash_isset (info, sector, 0, FLASH_STATUS_ECLBS)) {
-			puts ("Block Erase Error.\n");
-			retcode = -EIO;
-		} else if (flash_isset (info, sector, 0, FLASH_STATUS_PSLBS)) {
-			puts ("Locking Error\n");
+			printf("Block Erase Error.\n");
+			ret = -EIO;
+		} else if (flash_isset(info, sector, 0, FLASH_STATUS_PSLBS)) {
+			printf("Locking Error\n");
 		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_DPS)) {
-			puts ("Block locked.\n");
-			retcode = -EROFS;
+
+		if (flash_isset(info, sector, 0, FLASH_STATUS_DPS)) {
+			printf("Block locked.\n");
+			ret = -EROFS;
 		}
-		if (flash_isset (info, sector, 0, FLASH_STATUS_VPENS))
-			puts ("Vpp Low Error.\n");
+
+		if (flash_isset(info, sector, 0, FLASH_STATUS_VPENS))
+			printf("Vpp Low Error.\n");
 	}
-	flash_write_cmd (info, sector, 0, info->cmd_reset);
 
-	return retcode;
+	flash_write_cmd(info, sector, 0, info->cmd_reset);
+
+	return ret;
 }
 
-static int intel_flash_real_protect (struct flash_info *info, long sector, int prot)
+static int intel_flash_real_protect(struct flash_info *info, long sector, int prot)
 {
-	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-	flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+	flash_write_cmd(info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+	flash_write_cmd(info, sector, 0, FLASH_CMD_PROTECT);
+
 	if (prot)
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
+		flash_write_cmd(info, sector, 0, FLASH_CMD_PROTECT_SET);
 	else
-		flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
+		flash_write_cmd(info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
 
 	return 0;
 }
 
-static void intel_flash_fixup (struct flash_info *info, struct cfi_qry *qry)
+static void intel_flash_fixup(struct flash_info *info, struct cfi_qry *qry)
 {
 #ifdef CFG_FLASH_PROTECTION
 	/* read legacy lock/unlock bit from intel flash */
-	if (info->ext_addr) {
-		info->legacy_unlock = flash_read_uchar (info,
+	if (info->ext_addr)
+		info->legacy_unlock = flash_read_uchar(info,
 				info->ext_addr + 5) & 0x08;
-	}
 #endif
 }
 
@@ -168,4 +172,3 @@ struct cfi_cmd_set cfi_cmd_set_intel = {
 	.flash_real_protect = intel_flash_real_protect,
 	.flash_fixup = intel_flash_fixup,
 };
-
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
