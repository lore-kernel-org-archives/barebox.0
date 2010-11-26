Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PW-0002uR-Ie
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:37 +0100
Message-Id: <1290801161-2417-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/12] cfi_flash: Read whole QRY structure in one go
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>, Haavard Skinnemoen <hskinnemoen@atmel.com>

Read out the whole CFI Standard Query structure after successful cfi
identification. This allows subsequent code to access this information
directly without having to go through flash_read_uchar() and friends.

based on U-Boot

Signed-off-by: Haavard Skinnemoen <hskinnemoen@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c     |  149 ++++++++++++++++++------------------------
 drivers/nor/cfi_flash.h     |   33 ++++++++++
 drivers/nor/cfi_flash_amd.c |    3 +-
 3 files changed, 99 insertions(+), 86 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 2ac4e7c..041fb92 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -61,8 +61,6 @@
  *
  */
 
-#define NUM_ERASE_REGIONS	4 /* max. number of erase regions */
-
 static uint flash_offset_cfi[2]={FLASH_OFFSET_CFI,FLASH_OFFSET_CFI_ALT};
 
 /*
@@ -159,29 +157,25 @@ void print_longlong (char *str, unsigned long long data)
 		sprintf (&str[i * 2], "%2.2x", *cp++);
 }
 
-static void flash_printqry (struct flash_info *info, flash_sect_t sect)
+static void flash_printqry (struct cfi_qry *qry)
 {
-	cfiptr_t cptr;
+	u8 *p = (u8 *)qry;
 	int x, y;
 	unsigned char c;
 
-	for (x = 0; x < 0x40; x += 16U / info->portwidth) {
-		cptr.cp =
-			flash_make_addr (info, sect,
-					 x + FLASH_OFFSET_CFI_RESP);
-		debug ("%p : ", cptr.cp);
-		for (y = 0; y < 16; y++) {
-			debug ("%2.2x ", cptr.cp[y]);
-		}
-		debug (" ");
+	for (x = 0; x < sizeof(struct cfi_qry); x += 16) {
+		debug("%02x : ", x);
+		for (y = 0; y < 16; y++)
+			debug("%2.2x ", p[x + y]);
+		debug(" ");
 		for (y = 0; y < 16; y++) {
-			if (cptr.cp[y] >= 0x20 && cptr.cp[y] <= 0x7e) {
-				debug ("%c", cptr.cp[y]);
-			} else {
-				debug (".");
-			}
+			c = p[x + y];
+			if (c >= 0x20 && c <= 0x7e)
+				debug("%c", c);
+			else
+				debug(".");
 		}
-		debug ("\n");
+		debug("\n");
 	}
 }
 #endif
@@ -202,37 +196,6 @@ uchar flash_read_uchar (struct flash_info *info, uint offset)
 }
 
 /*
- * read a short word by swapping for ppc format.
- */
-static ushort flash_read_ushort (struct flash_info *info, flash_sect_t sect, uint offset)
-{
-	uchar *addr;
-	ushort retval;
-
-#ifdef DEBUG
-	int x;
-#endif
-	addr = flash_make_addr (info, sect, offset);
-
-#ifdef DEBUG
-	debug ("ushort addr is at %p info->portwidth = %d\n", addr,
-	       info->portwidth);
-	for (x = 0; x < 2 * info->portwidth; x++) {
-		debug ("addr[%x] = 0x%x\n", x, addr[x]);
-	}
-#endif
-#if defined(__LITTLE_ENDIAN)
-	retval = ((addr[(info->portwidth)] << 8) | addr[0]);
-#else
-	retval = ((addr[(2 * info->portwidth) - 1] << 8) |
-		  addr[info->portwidth - 1]);
-#endif
-
-	debug ("retval = 0x%x\n", retval);
-	return retval;
-}
-
-/*
  * read a long word by picking the least significant byte of each maximum
  * port size word. Swap for ppc format.
  */
@@ -290,7 +253,17 @@ u32 jedec_read_mfr(struct flash_info *info)
 	return mfr;
 }
 
-static int flash_detect_cfi (struct flash_info *info)
+static void flash_read_cfi (struct flash_info *info, void *buf,
+		unsigned int start, size_t len)
+{
+	u8 *p = buf;
+	unsigned int i;
+
+	for (i = 0; i < len; i++)
+		p[i] = flash_read_uchar(info, start + i);
+}
+
+static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 {
 	int cfi_offset;
 	debug ("flash detect cfi\n");
@@ -307,7 +280,10 @@ static int flash_detect_cfi (struct flash_info *info)
 				if (flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP, 'Q')
 				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 1, 'R')
 				 && flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP + 2, 'Y')) {
-					info->interface = flash_read_ushort (info, 0, FLASH_OFFSET_INTERFACE);
+					flash_read_cfi(info, qry, FLASH_OFFSET_CFI_RESP,
+						       sizeof(struct cfi_qry));
+					info->interface = le16_to_cpu(qry->interface_desc);
+
 					info->cfi_offset=flash_offset_cfi[cfi_offset];
 					debug ("device interface is %d\n",
 						info->interface);
@@ -340,6 +316,9 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 	int erase_region_count;
 	int geometry_reversed = 0;
 	int cur_offset = 0;
+	struct cfi_qry qry;
+
+	memset(&qry, 0, sizeof(qry));
 
 	info->ext_addr = 0;
 	info->cfi_version = 0;
@@ -353,9 +332,22 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 	info->start[0] = base;
 	info->protect = 0;
 
-	if (flash_detect_cfi (info)) {
-		info->vendor = flash_read_ushort (info, 0,
-					FLASH_OFFSET_PRIMARY_VENDOR);
+	if (flash_detect_cfi (info, &qry)) {
+		info->vendor = le16_to_cpu(qry.p_id);
+		info->ext_addr = le16_to_cpu(qry.p_adr);
+		num_erase_regions = qry.num_erase_regions;
+
+		if (info->ext_addr) {
+			info->cfi_version = (ushort) flash_read_uchar (info,
+						info->ext_addr + 3) << 8;
+			info->cfi_version |= (ushort) flash_read_uchar (info,
+						info->ext_addr + 4);
+		}
+
+#ifdef DEBUG
+		flash_printqry (&qry);
+#endif
+
 		switch (info->vendor) {
 #ifdef CONFIG_DRIVER_CFI_INTEL
 		case CFI_CMDSET_INTEL_EXTENDED:
@@ -375,19 +367,7 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		}
 		info->cfi_cmd_set->flash_read_jedec_ids (info);
 		flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
-		num_erase_regions = flash_read_uchar (info,
-					FLASH_OFFSET_NUM_ERASE_REGIONS);
-		info->ext_addr = flash_read_ushort (info, 0,
-					FLASH_OFFSET_EXT_QUERY_T_P_ADDR);
-		if (info->ext_addr) {
-			info->cfi_version = (ushort) flash_read_uchar (info,
-						info->ext_addr + 3) << 8;
-			info->cfi_version |= (ushort) flash_read_uchar (info,
-						info->ext_addr + 4);
-		}
-#ifdef DEBUG
-		flash_printqry (info, 0);
-#endif
+
 		switch (info->vendor) {
 		case CFI_CMDSET_INTEL_STANDARD:
 		case CFI_CMDSET_INTEL_EXTENDED:
@@ -445,6 +425,7 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		sector = base;
 
 		for (i = 0; i < num_erase_regions; i++) {
+			unsigned int __region = i;
 			struct mtd_erase_region_info *region = &info->eraseregions[i];
 
 			if (i > NUM_ERASE_REGIONS) {
@@ -453,17 +434,15 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 				break;
 			}
 			if (geometry_reversed)
-				tmp = flash_read_long (info, 0,
-					       FLASH_OFFSET_ERASE_REGIONS +
-					       (num_erase_regions - 1 - i) * 4);
-			else
-				tmp = flash_read_long (info, 0,
-					       FLASH_OFFSET_ERASE_REGIONS +
-					       i * 4);
+				__region = num_erase_regions - 1 - i;
+			
+			tmp = le32_to_cpu(qry.erase_region_info[__region]);
+			debug("erase region %u: 0x%08lx\n", __region, tmp);
+
+			erase_region_count = (tmp & 0xffff) + 1;
+			tmp >>= 16;
 			erase_region_size =
 				(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
-			tmp >>= 16;
-			erase_region_count = (tmp & 0xffff) + 1;
 			debug ("erase_region_count = %d erase_region_size = %d\n",
 				erase_region_count, erase_region_size);
 
@@ -501,15 +480,15 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 
 		info->sector_count = sect_cnt;
 		/* multiply the size by the number of chips */
-		info->size = (1 << flash_read_uchar (info, FLASH_OFFSET_SIZE)) * size_ratio;
-		info->buffer_size = (1 << flash_read_ushort (info, 0, FLASH_OFFSET_BUFFER_SIZE));
-		tmp = 1 << flash_read_uchar (info, FLASH_OFFSET_ETOUT);
-		info->erase_blk_tout = (tmp * (1 << flash_read_uchar (info, FLASH_OFFSET_EMAX_TOUT)));
-		tmp = (1 << flash_read_uchar (info, FLASH_OFFSET_WBTOUT)) *
-			(1 << flash_read_uchar (info, FLASH_OFFSET_WBMAX_TOUT));
+		info->size = (1 << qry.dev_size) * size_ratio;
+		info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
+		tmp = 1 << qry.block_erase_timeout_typ;
+		info->erase_blk_tout = (tmp * (1 << qry.block_erase_timeout_max));
+		tmp = (1 << qry.buf_write_timeout_typ) *
+			(1 << qry.buf_write_timeout_max);
 		info->buffer_write_tout = tmp * 1000;
-		tmp = (1 << flash_read_uchar (info, FLASH_OFFSET_WTOUT)) *
-		      (1 << flash_read_uchar (info, FLASH_OFFSET_WMAX_TOUT));
+		tmp = (1 << qry.word_write_timeout_typ) *
+		      (1 << qry.word_write_timeout_max);
 		info->write_tout = tmp * 1000;
 		info->flash_id = FLASH_MAN_CFI;
 		if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8)) {
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 026654c..4b3bd25 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -73,6 +73,39 @@ struct flash_info {
 
 #define NUM_ERASE_REGIONS	4 /* max. number of erase regions */
 
+/* CFI standard query structure */
+struct cfi_qry {
+	u8	qry[3];
+	u16	p_id;
+	u16	p_adr;
+	u16	a_id;
+	u16	a_adr;
+	u8	vcc_min;
+	u8	vcc_max;
+	u8	vpp_min;
+	u8	vpp_max;
+	u8	word_write_timeout_typ;
+	u8	buf_write_timeout_typ;
+	u8	block_erase_timeout_typ;
+	u8	chip_erase_timeout_typ;
+	u8	word_write_timeout_max;
+	u8	buf_write_timeout_max;
+	u8	block_erase_timeout_max;
+	u8	chip_erase_timeout_max;
+	u8	dev_size;
+	u16	interface_desc;
+	u16	max_buf_write_size;
+	u8	num_erase_regions;
+	u32	erase_region_info[NUM_ERASE_REGIONS];
+} __attribute__((packed));
+
+struct cfi_pri_hdr {
+	u8	pri[3];
+	u8	major_version;
+	u8	minor_version;
+} __attribute__((packed));
+
+
 struct cfi_cmd_set {
 	int (*flash_write_cfibuffer) (struct flash_info *info, ulong dest, const uchar * cp, int len);
 	int (*flash_erase_one) (struct flash_info *info, long sect);
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index e9319b6..738389c 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -72,7 +72,8 @@ static int flash_toggle (struct flash_info *info, flash_sect_t sect, uint offset
 	} else if (bankwidth_is_4(info)) {
 		retval = flash_read32(addr) != flash_read32(addr);
 	} else if (bankwidth_is_8(info)) {
-		retval = flash_read64(addr) != flash_read64(addr);
+		retval = ( (flash_read32( addr ) != flash_read32( addr )) ||
+			   (flash_read32(addr+4) != flash_read32(addr+4)) );
 	} else
 		retval = 0;
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
