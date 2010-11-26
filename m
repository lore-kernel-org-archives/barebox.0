Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.76.mail-out.ovh.net ([91.121.63.253] helo=76.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM50T-00068J-Ty
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 20:35:00 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:36 +0100
Message-Id: <1290801161-2417-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101126194353.GH26540@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
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
Subject: [PATCH 07/12] cfi_flash: Introduce read and write accessors
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>, Haavard Skinnemoen <hskinnemoen@atmel.com>

Introduce flash_read{8,16,32,64) and flash_write{8,16,32,64} and use
them to access the flash memory. This makes it clearer when the flash
is actually being accessed; merely dereferencing a volatile pointer
looks just like any other kind of access.

based on U-Boot

Signed-off-by: Haavard Skinnemoen <hskinnemoen@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c       |   93 +++++++++++++++++++++--------------------
 drivers/nor/cfi_flash.h       |   58 +++++++++++++++++++++-----
 drivers/nor/cfi_flash_amd.c   |   39 +++++++++++-------
 drivers/nor/cfi_flash_intel.c |   18 ++++----
 4 files changed, 129 insertions(+), 79 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index a1e0726..2ac4e7c 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -117,20 +117,20 @@ static void flash_add_byte (struct flash_info *info, cfiword_t * cword, uchar c)
 static int flash_write_cfiword (struct flash_info *info, ulong dest,
 				cfiword_t cword)
 {
-	cfiptr_t cptr;
+	void *dstaddr;
 	int flag;
 
-	cptr.cp = (uchar *) dest;
+	dstaddr = (uchar *) dest;
 
 	/* Check if Flash is (sufficiently) erased */
 	if (bankwidth_is_1(info)) {
-		flag = ((cptr.cp[0] & cword.c) == cword.c);
+		flag = ((flash_read8(dstaddr) & cword.c) == cword.c);
 	} else if (bankwidth_is_2(info)) {
-		flag = ((cptr.wp[0] & cword.w) == cword.w);
+		flag = ((flash_read16(dstaddr) & cword.w) == cword.w);
 	} else if (bankwidth_is_4(info)) {
-		flag = ((cptr.lp[0] & cword.l) == cword.l);
+		flag = ((flash_read32(dstaddr) & cword.l) == cword.l);
 	} else if (bankwidth_is_8(info)) {
-		flag = ((cptr.llp[0] & cword.ll) == cword.ll);
+		flag = ((flash_read64(dstaddr) & cword.ll) == cword.ll);
 	} else
 		return 2;
 
@@ -163,6 +163,7 @@ static void flash_printqry (struct flash_info *info, flash_sect_t sect)
 {
 	cfiptr_t cptr;
 	int x, y;
+	unsigned char c;
 
 	for (x = 0; x < 0x40; x += 16U / info->portwidth) {
 		cptr.cp =
@@ -194,9 +195,9 @@ uchar flash_read_uchar (struct flash_info *info, uint offset)
 
 	cp = flash_make_addr (info, 0, offset);
 #if defined(__LITTLE_ENDIAN)
-	return (cp[0]);
+	return flash_read8(cp);
 #else
-	return (cp[info->portwidth - 1]);
+	return flash_read8(cp + info->portwidth - 1);
 #endif
 }
 
@@ -249,17 +250,19 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 	debug ("long addr is at %p info->portwidth = %d\n", addr,
 	       info->portwidth);
 	for (x = 0; x < 4 * info->portwidth; x++) {
-		debug ("addr[%x] = 0x%x\n", x, addr[x]);
+		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
 	}
 #endif
 #if defined(__LITTLE_ENDIAN)
-	retval = (addr[0] << 16) | (addr[(info->portwidth)] << 24) |
-		(addr[(2 * info->portwidth)]) | (addr[(3 * info->portwidth)] << 8);
+	retval = ((flash_read8(addr) << 16) |
+		  (flash_read8(addr + info->portwidth) << 24) |
+		  (flash_read8(addr + 2 * info->portwidth)) |
+		  (flash_read8(addr + 3 * info->portwidth) << 8));
 #else
-	retval = (addr[(2 * info->portwidth) - 1] << 24) |
-		(addr[(info->portwidth) - 1] << 16) |
-		(addr[(4 * info->portwidth) - 1] << 8) |
-		addr[(3 * info->portwidth) - 1];
+	retval = ((flash_read8(addr + 2 * info->portwidth - 1) << 24) |
+		  (flash_read8(addr + info->portwidth - 1) << 16) |
+		  (flash_read8(addr + 4 * info->portwidth - 1) << 8) |
+		  (flash_read8(addr + 3 * info->portwidth - 1)));
 #endif
 	return retval;
 }
@@ -576,7 +579,7 @@ static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
 static int write_buff (struct flash_info *info, const uchar * src, ulong addr, ulong cnt)
 {
 	ulong wp;
-	ulong cp;
+	uchar *p;
 	int aln;
 	cfiword_t cword;
 	int i, rc;
@@ -585,28 +588,27 @@ static int write_buff (struct flash_info *info, const uchar * src, ulong addr, u
 	int buffered_size;
 #endif
 	/* get lower aligned address */
-	/* get lower aligned address */
 	wp = (addr & ~(info->portwidth - 1));
 
 	/* handle unaligned start */
 	if ((aln = addr - wp) != 0) {
 		cword.l = 0;
-		cp = wp;
-		for (i = 0; i < aln; ++i, ++cp)
-			flash_add_byte (info, &cword, (*(uchar *) cp));
+		p = (uchar*)wp;
+		for (i = 0; i < aln; ++i)
+			flash_add_byte (info, &cword, flash_read8(p + i));
 
 		for (; (i < info->portwidth) && (cnt > 0); i++) {
 			flash_add_byte (info, &cword, *src++);
 			cnt--;
-			cp++;
 		}
-		for (; (cnt == 0) && (i < info->portwidth); ++i, ++cp)
-			flash_add_byte (info, &cword, (*(uchar *) cp));
+		for (; (cnt == 0) && (i < info->portwidth); ++i)
+			flash_add_byte (info, &cword, flash_read8(p + i));
 
 		rc = flash_write_cfiword (info, wp, cword);
-		if (rc)
+		if (rc != 0)
 			return rc;
-		wp = cp;
+
+		wp += i;
 	}
 
 	/* handle the aligned part */
@@ -657,12 +659,13 @@ static int write_buff (struct flash_info *info, const uchar * src, ulong addr, u
 	 * handle unaligned tail bytes
 	 */
 	cword.l = 0;
-	for (i = 0, cp = wp; (i < info->portwidth) && (cnt > 0); ++i, ++cp) {
+	p = (uchar*)wp;
+	for (i = 0; (i < info->portwidth) && (cnt > 0); ++i) {
 		flash_add_byte (info, &cword, *src++);
 		--cnt;
 	}
-	for (; i < info->portwidth; ++i, ++cp) {
-		flash_add_byte (info, &cword, (*(uchar *) cp));
+	for (; i < info->portwidth; ++i) {
+		flash_add_byte (info, &cword, flash_read8(p + i));
 	}
 
 	return flash_write_cfiword (info, wp, cword);
@@ -920,35 +923,35 @@ void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint offset, u
 
 int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
-	cfiptr_t cptr;
+	void *addr;
 	cfiword_t cword;
 	int retval;
 
-	cptr.cp = flash_make_addr (info, sect, offset);
+	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 
-	debug ("is= cmd %x(%c) addr %p ", cmd, cmd, cptr.cp);
+	debug ("is= cmd %x(%c) addr %p ", cmd, cmd, addr);
 	if (bankwidth_is_1(info)) {
-		debug ("is= %x %x\n", cptr.cp[0], cword.c);
-		retval = (cptr.cp[0] == cword.c);
+		debug ("is= %x %x\n", flash_read8(addr), cword.c);
+		retval = (flash_read8(addr) == cword.c);
 	} else if (bankwidth_is_2(info)) {
-		debug ("is= %4.4x %4.4x\n", cptr.wp[0], cword.w);
-		retval = (cptr.wp[0] == cword.w);
+		debug ("is= %4.4x %4.4x\n", flash_read16(addr), cword.w);
+		retval = (flash_read16(addr) == cword.w);
 	} else if (bankwidth_is_4(info)) {
-		debug ("is= %8.8lx %8.8lx\n", cptr.lp[0], cword.l);
-		retval = (cptr.lp[0] == cword.l);
+		debug ("is= %8.8lx %8.8lx\n", flash_read32(addr), cword.l);
+		retval = (flash_read32(addr) == cword.l);
 	} else if (bankwidth_is_8(info)) {
 #ifdef DEBUG
 		{
 			char str1[20];
 			char str2[20];
 
-			print_longlong (str1, cptr.llp[0]);
+			print_longlong (str1, flash_read32(addr));
 			print_longlong (str2, cword.ll);
 			debug ("is= %s %s\n", str1, str2);
 		}
 #endif
-		retval = (cptr.llp[0] == cword.ll);
+		retval = (flash_read32(addr) == cword.ll);
 	} else
 		retval = 0;
 
@@ -957,20 +960,20 @@ int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offset, ucha
 
 int flash_isset (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
-	cfiptr_t cptr;
+	void *addr;
 	cfiword_t cword;
 	int retval;
 
-	cptr.cp = flash_make_addr (info, sect, offset);
+	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 	if (bankwidth_is_1(info)) {
-		retval = ((cptr.cp[0] & cword.c) == cword.c);
+		retval = ((flash_read8(addr) & cword.c) == cword.c);
 	} else if (bankwidth_is_2(info)) {
-		retval = ((cptr.wp[0] & cword.w) == cword.w);
+		retval = ((flash_read16(addr) & cword.w) == cword.w);
 	} else if (bankwidth_is_4(info)) {
-		retval = ((cptr.lp[0] & cword.l) == cword.l);
+		retval = ((flash_read32(addr) & cword.l) == cword.l);
 	} else if (bankwidth_is_8(info)) {
-		retval = ((cptr.llp[0] & cword.ll) == cword.ll);
+		retval = ((flash_read64(addr) & cword.ll) == cword.ll);
 	} else
 		retval = 0;
 
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 877822a..026654c 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -71,6 +71,8 @@ struct flash_info {
 	void *base;
 };
 
+#define NUM_ERASE_REGIONS	4 /* max. number of erase regions */
+
 struct cfi_cmd_set {
 	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
 	int (*flash_erase_one) (struct flash_info *info, long sect);
@@ -204,6 +206,47 @@ int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 int flash_isequal (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd);
 void flash_make_cmd (struct flash_info *info, uchar cmd, void *cmdbuf);
 
+static void flash_write8(u8 value, void *addr)
+{
+	__raw_writeb(value, addr);
+}
+
+static void flash_write16(u16 value, void *addr)
+{
+	__raw_writew(value, addr);
+}
+
+static void flash_write32(u32 value, void *addr)
+{
+	__raw_writel(value, addr);
+}
+
+static void flash_write64(u64 value, void *addr)
+{
+	memcpy((void *)addr, &value, 8);
+}
+
+static u8 flash_read8(void *addr)
+{
+	return __raw_readb(addr);
+}
+
+static u16 flash_read16(void *addr)
+{
+	return __raw_readw(addr);
+}
+
+static u32 flash_read32(void *addr)
+{
+	return __raw_readl(addr);
+}
+
+static u64 flash_read64(void *addr)
+{
+	/* No architectures currently implement __raw_readq() */
+	return *(volatile u64 *)addr;
+}
+
 /*
  * create an address based on the offset and the port width
  */
@@ -246,26 +289,19 @@ typedef union {
 	unsigned long long ll;
 } cfiword_t;
 
-typedef union {
-	volatile unsigned char *cp;
-	volatile unsigned short *wp;
-	volatile unsigned long *lp;
-	volatile unsigned long long *llp;
-} cfiptr_t;
-
 static inline void flash_write_word(struct flash_info *info, cfiword_t datum, void *addr)
 {
 	if (bankwidth_is_1(info)) {
 		debug("fw addr %p val %02x\n", addr, datum.c);
-		writeb(datum.c, addr);
+		flash_write8(datum.c, addr);
 	} else if (bankwidth_is_2(info)) {
 		debug("fw addr %p val %04x\n", addr, datum.w);
-		writew(datum.w, addr);
+		flash_write16(datum.w, addr);
 	} else if (bankwidth_is_4(info)) {
 		debug("fw addr %p val %08x\n", addr, datum.l);
-		writel(datum.l, addr);
+		flash_write32(datum.l, addr);
 	} else if (bankwidth_is_8(info)) {
-		memcpy((void *)addr, &datum.ll, 8);
+		flash_write64(datum.ll, addr);
 	}
 }
 
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index 54e764d..e9319b6 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -59,21 +59,20 @@ static void amd_read_jedec_ids (struct flash_info *info)
 
 static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset, uchar cmd)
 {
-	cfiptr_t cptr;
+	void *addr;
 	cfiword_t cword;
 	int retval;
 
-	cptr.cp = flash_make_addr (info, sect, offset);
+	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 	if (bankwidth_is_1(info)) {
-		retval = ((cptr.cp[0] & cword.c) != (cptr.cp[0] & cword.c));
+		retval = flash_read8(addr) != flash_read8(addr);
 	} else if (bankwidth_is_2(info)) {
-		retval = ((cptr.wp[0] & cword.w) != (cptr.wp[0] & cword.w));
+		retval = flash_read16(addr) != flash_read16(addr);
 	} else if (bankwidth_is_4(info)) {
-		retval = ((cptr.lp[0] & cword.l) != (cptr.lp[0] & cword.l));
+		retval = flash_read32(addr) != flash_read32(addr);
 	} else if (bankwidth_is_8(info)) {
-		retval = ((cptr.llp[0] & cword.ll) !=
-			  (cptr.llp[0] & cword.ll));
+		retval = flash_read64(addr) != flash_read64(addr);
 	} else
 		retval = 0;
 
@@ -112,12 +111,10 @@ static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const
 	flash_sect_t sector;
 	int cnt;
 	int retcode;
-	volatile cfiptr_t src;
-	volatile cfiptr_t dst;
+	void *src = (void*)cp;
+	void *dst = (void *)dest;
 	cfiword_t cword;
 
-	src.cp = (uchar *)cp;
-	dst.cp = (uchar *) dest;
 	sector = find_sector (info, dest);
 
 	flash_unlock_seq(info);
@@ -127,19 +124,31 @@ static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const
 	if (bankwidth_is_1(info)) {
 		cnt = len;
 		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
-		while (cnt-- > 0) *dst.cp++ = *src.cp++;
+		while (cnt-- > 0) {
+			flash_write8(flash_read8(src), dst);
+			src += 1, dst += 1;
+		}
 	} else if (bankwidth_is_2(info)) {
 		cnt = len >> 1;
 		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
-		while (cnt-- > 0) *dst.wp++ = *src.wp++;
+		while (cnt-- > 0) {
+			flash_write16(flash_read16(src), dst);
+			src += 2, dst += 2;
+		}
 	} else if (bankwidth_is_4(info)) {
 		cnt = len >> 2;
 		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
-		while (cnt-- > 0) *dst.lp++ = *src.lp++;
+		while (cnt-- > 0) {
+			flash_write32(flash_read32(src), dst);
+			src += 4, dst += 4;
+		}
 	} else if (bankwidth_is_8(info)) {
 		cnt = len >> 3;
 		flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
-		while (cnt-- > 0) *dst.llp++ = *src.llp++;
+		while (cnt-- > 0) {
+			flash_write64(flash_read64(src), dst);
+			src += 8, dst += 8;
+		}
 	}
 
 	flash_write_cmd (info, sector, 0, AMD_CMD_WRITE_BUFFER_CONFIRM);
diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 649f83b..f28301d 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -54,11 +54,9 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 	flash_sect_t sector;
 	int cnt;
 	int retcode;
-	volatile cfiptr_t src;
-	volatile cfiptr_t dst;
+	void *src = (void*)cp;
+	void *dst = (void *)dest;
 
-	src.cp = (uchar *)cp;
-	dst.cp = (uchar *) dest;
 	sector = find_sector (info, dest);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
@@ -74,13 +72,17 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 	flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
 	while (cnt-- > 0) {
 		if (bankwidth_is_1(info)) {
-			*dst.cp++ = *src.cp++;
+			flash_write8(flash_read8(src), dst);
+			src += 1, dst += 1;
 		} else if (bankwidth_is_2(info)) {
-			*dst.wp++ = *src.wp++;
+			flash_write16(flash_read16(src), dst);
+			src += 2, dst += 2;
 		} else if (bankwidth_is_4(info)) {
-			*dst.lp++ = *src.lp++;
+			flash_write32(flash_read32(src), dst);
+			src += 4, dst += 4;
 		} else if (bankwidth_is_8(info)) {
-			*dst.llp++ = *src.llp++;
+			flash_write64(flash_read64(src), dst);
+			src += 8, dst += 8;
 		}
 	}
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
