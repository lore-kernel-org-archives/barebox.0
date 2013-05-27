Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtDH-0001N0-Lv
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:55:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:55:02 +0200
Message-Id: <1369644903-27284-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644903-27284-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644903-27284-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] cfi: Add dev * to flash_info and switch to dev_*
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 55 +++++++++++++++++++++++----------------------
 drivers/mtd/nor/cfi_flash.h |  1 +
 2 files changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 4b4e29d..645d93a 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -187,10 +187,10 @@ static ulong flash_read_long (struct flash_info *info, flash_sect_t sect, uint o
 	addr = flash_make_addr (info, sect, offset);
 
 #ifdef DEBUG
-	debug ("long addr is at %p info->portwidth = %d\n", addr,
+	dev_dbg(info->dev, "long addr is at %p info->portwidth = %d\n", addr,
 	       info->portwidth);
 	for (x = 0; x < 4 * info->portwidth; x++) {
-		debug ("addr[%x] = 0x%x\n", x, flash_read8(addr + x));
+		dev_dbg(info->dev, "addr[%x] = 0x%x\n", x, flash_read8(addr + x));
 	}
 #endif
 #if defined __LITTLE_ENDIAN
@@ -262,11 +262,11 @@ static int flash_detect_width (struct flash_info *info, struct cfi_qry *qry)
 					info->interface = le16_to_cpu(qry->interface_desc);
 
 					info->cfi_offset=flash_offset_cfi[cfi_offset];
-					debug ("device interface is %d\n",
+					dev_dbg(info->dev, "device interface is %d\n",
 						info->interface);
-					debug ("found port %d chip %d chip_lsb %d ",
+					dev_dbg(info->dev, "found port %d chip %d chip_lsb %d ",
 						info->portwidth, info->chipwidth, info->chip_lsb);
-					debug ("port %d bits chip %d bits\n",
+					dev_dbg(info->dev, "port %d bits chip %d bits\n",
 						info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 						info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
 					return 1;
@@ -274,7 +274,7 @@ static int flash_detect_width (struct flash_info *info, struct cfi_qry *qry)
 			}
 		}
 	}
-	debug ("not found\n");
+	dev_dbg(info->dev, "not found\n");
 	return 0;
 }
 
@@ -282,7 +282,7 @@ static int flash_detect_cfi (struct flash_info *info, struct cfi_qry *qry)
 {
 	int ret;
 
-	debug ("flash detect cfi\n");
+	dev_dbg(info->dev, "flash detect cfi\n");
 
 	info->chip_lsb = 0;
 	ret = flash_detect_width (info, qry);
@@ -354,7 +354,7 @@ static ulong flash_get_size (struct flash_info *info)
 			break;
 #endif
 		default:
-			printf("unsupported vendor\n");
+			dev_err(info->dev, "unsupported vendor\n");
 			return 0;
 		}
 		info->cfi_cmd_set->flash_read_jedec_ids (info);
@@ -362,11 +362,11 @@ static ulong flash_get_size (struct flash_info *info)
 
 		info->cfi_cmd_set->flash_fixup (info, &qry);
 
-		debug ("manufacturer is %d\n", info->vendor);
-		debug ("manufacturer id is 0x%x\n", info->manufacturer_id);
-		debug ("device id is 0x%x\n", info->device_id);
-		debug ("device id2 is 0x%x\n", info->device_id2);
-		debug ("cfi version is 0x%04x\n", info->cfi_version);
+		dev_dbg(info->dev, "manufacturer is %d\n", info->vendor);
+		dev_dbg(info->dev, "manufacturer id is 0x%x\n", info->manufacturer_id);
+		dev_dbg(info->dev, "device id is 0x%x\n", info->device_id);
+		dev_dbg(info->dev, "device id2 is 0x%x\n", info->device_id2);
+		dev_dbg(info->dev, "cfi version is 0x%04x\n", info->cfi_version);
 
 		size_ratio = info->portwidth / info->chipwidth;
 		/* if the chip is x8/x16 reduce the ratio by half */
@@ -374,10 +374,10 @@ static ulong flash_get_size (struct flash_info *info)
 		    && (info->chipwidth == FLASH_CFI_BY8)) {
 			size_ratio >>= 1;
 		}
-		debug ("size_ratio %d port %d bits chip %d bits\n",
+		dev_dbg(info->dev, "size_ratio %d port %d bits chip %d bits\n",
 		       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
 		       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
-		debug ("found %d erase regions\n", num_erase_regions);
+		dev_dbg(info->dev, "found %d erase regions\n", num_erase_regions);
 		info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
 		info->numeraseregions = num_erase_regions;
 		sect_cnt = 0;
@@ -387,19 +387,19 @@ static ulong flash_get_size (struct flash_info *info)
 			struct mtd_erase_region_info *region = &info->eraseregions[i];
 
 			if (i > NUM_ERASE_REGIONS) {
-				printf ("%d erase regions found, only %d used\n",
+				dev_info(info->dev, "%d erase regions found, only %d used\n",
 					num_erase_regions, NUM_ERASE_REGIONS);
 				break;
 			}
 
 			tmp = le32_to_cpu(qry.erase_region_info[i]);
-			debug("erase region %u: 0x%08lx\n", i, tmp);
+			dev_dbg(info->dev, "erase region %u: 0x%08lx\n", i, tmp);
 
 			erase_region_count = (tmp & 0xffff) + 1;
 			tmp >>= 16;
 			erase_region_size =
 				(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
-			debug ("erase_region_count = %d erase_region_size = %d\n",
+			dev_dbg(info->dev, "erase_region_count = %d erase_region_size = %d\n",
 				erase_region_count, erase_region_size);
 
 			region->offset = cur_offset;
@@ -474,7 +474,7 @@ static int cfi_erase(struct flash_info *finfo, size_t count, loff_t offset)
         unsigned long start, end;
         int i, ret = 0;
 
-	debug("%s: erase 0x%08llx (size %zu)\n", __func__, offset, count);
+	dev_dbg(finfo->dev, "%s: erase 0x%08llx (size %zu)\n", __func__, offset, count);
 
         start = find_sector(finfo, (unsigned long)finfo->base + offset);
         end   = find_sector(finfo, (unsigned long)finfo->base + offset +
@@ -801,7 +801,7 @@ int flash_generic_status_check (struct flash_info *info, flash_sect_t sector,
 	start = get_time_ns();
 	while (info->cfi_cmd_set->flash_is_busy (info, sector)) {
 		if (is_timeout(start, tout)) {
-			printf ("Flash %s timeout at address %lx data %lx\n",
+			dev_err(info->dev, "Flash %s timeout at address %lx data %lx\n",
 				prompt, info->start[sector],
 				flash_read_long (info, sector, 0));
 			flash_write_cmd (info, sector, 0, info->cmd_reset);
@@ -838,7 +838,7 @@ void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 
-	debug("%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
+	dev_dbg(info->dev, "%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
 			info, sect, offset, addr, cword);
 
 	flash_write_word(info, cword, addr);
@@ -854,15 +854,15 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 
-	debug ("is= cmd %x(%c) addr %p ", cmd, cmd, addr);
+	dev_dbg(info->dev, "is= cmd %x(%c) addr %p ", cmd, cmd, addr);
 	if (bankwidth_is_1(info)) {
-		debug ("is= %x %x\n", flash_read8(addr), (u8)cword);
+		dev_dbg(info->dev, "is= %x %x\n", flash_read8(addr), (u8)cword);
 		retval = (flash_read8(addr) == cword);
 	} else if (bankwidth_is_2(info)) {
-		debug ("is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
+		dev_dbg(info->dev, "is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
 		retval = (flash_read16(addr) == cword);
 	} else if (bankwidth_is_4(info)) {
-		debug ("is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
+		dev_dbg(info->dev, "is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
 		retval = (flash_read32(addr) == cword);
 	} else if (bankwidth_is_8(info)) {
 #ifdef DEBUG
@@ -872,7 +872,7 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 
 			print_longlong (str1, flash_read32(addr));
 			print_longlong (str2, cword);
-			debug ("is= %s %s\n", str1, str2);
+			dev_dbg(info->dev, "is= %s %s\n", str1, str2);
 		}
 #endif
 		retval = (flash_read64(addr) == cword);
@@ -977,9 +977,10 @@ static int cfi_probe (struct device_d *dev)
 	info->cmd_reset = FLASH_CMD_RESET;
 	info->base = dev_request_mem_region(dev, 0);
 	info->size = flash_get_size(info);
+	info->dev = dev;
 
 	if (info->flash_id == FLASH_UNKNOWN) {
-		printf ("## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
+		dev_warn(dev, "## Unknown FLASH on Bank at 0x%08x - Size = 0x%08lx = %ld MB\n",
 			dev->resource[0].start, info->size, info->size << 20);
 		return -ENODEV;
 	}
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 5c31d51..9aad5c4 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -48,6 +48,7 @@ struct cfi_cmd_set;
  */
 
 struct flash_info {
+	struct device_d *dev;
 	ulong	size;			/* total bank size in bytes		*/
 	ushort	sector_count;		/* number of erase units		*/
 	ulong	flash_id;		/* combined device & manufacturer code	*/
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
