Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zR-H3
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:40:57 +0200
Message-Id: <1434962466-23590-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] mtd: cfi-flash: save indention level
To: Barebox List <barebox@lists.infradead.org>

Bail out early in flash_get_size() and save an indention level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 227 ++++++++++++++++++++++----------------------
 1 file changed, 114 insertions(+), 113 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 6d82764..01d23d5 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -312,134 +312,135 @@ static ulong flash_get_size (struct flash_info *info)
 	info->start[0] = base;
 	info->protect = 0;
 
-	if (flash_detect_cfi (info, &qry)) {
-		info->vendor = le16_to_cpu(qry.p_id);
-		info->ext_addr = le16_to_cpu(qry.p_adr);
-		num_erase_regions = qry.num_erase_regions;
-
-		if (info->ext_addr) {
-			info->cfi_version = (ushort) flash_read_uchar (info,
-						info->ext_addr + 3) << 8;
-			info->cfi_version |= (ushort) flash_read_uchar (info,
-						info->ext_addr + 4);
-		}
+	if (!flash_detect_cfi (info, &qry))
+		return 0;
+
+	info->vendor = le16_to_cpu(qry.p_id);
+	info->ext_addr = le16_to_cpu(qry.p_adr);
+	num_erase_regions = qry.num_erase_regions;
+
+	if (info->ext_addr) {
+		info->cfi_version = (ushort) flash_read_uchar (info,
+					info->ext_addr + 3) << 8;
+		info->cfi_version |= (ushort) flash_read_uchar (info,
+					info->ext_addr + 4);
+	}
 
 #ifdef DEBUG
-		flash_printqry (&qry);
+	flash_printqry (&qry);
 #endif
 
-		switch (info->vendor) {
+	switch (info->vendor) {
 #ifdef CONFIG_DRIVER_CFI_INTEL
-		case CFI_CMDSET_INTEL_EXTENDED:
-		case CFI_CMDSET_INTEL_STANDARD:
-			info->cfi_cmd_set = &cfi_cmd_set_intel;
-			break;
+	case CFI_CMDSET_INTEL_EXTENDED:
+	case CFI_CMDSET_INTEL_STANDARD:
+		info->cfi_cmd_set = &cfi_cmd_set_intel;
+		break;
 #endif
 #ifdef CONFIG_DRIVER_CFI_AMD
-		case CFI_CMDSET_AMD_STANDARD:
-		case CFI_CMDSET_AMD_EXTENDED:
-			info->cfi_cmd_set = &cfi_cmd_set_amd;
-			break;
+	case CFI_CMDSET_AMD_STANDARD:
+	case CFI_CMDSET_AMD_EXTENDED:
+		info->cfi_cmd_set = &cfi_cmd_set_amd;
+		break;
 #endif
-		default:
-			dev_err(info->dev, "unsupported vendor\n");
-			return 0;
-		}
-		info->cfi_cmd_set->flash_read_jedec_ids (info);
-		flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
-
-		info->cfi_cmd_set->flash_fixup (info, &qry);
-
-		dev_dbg(info->dev, "manufacturer is %d\n", info->vendor);
-		dev_dbg(info->dev, "manufacturer id is 0x%x\n", info->manufacturer_id);
-		dev_dbg(info->dev, "device id is 0x%x\n", info->device_id);
-		dev_dbg(info->dev, "device id2 is 0x%x\n", info->device_id2);
-		dev_dbg(info->dev, "cfi version is 0x%04x\n", info->cfi_version);
-
-		size_ratio = info->portwidth / info->chipwidth;
-		/* if the chip is x8/x16 reduce the ratio by half */
-		if ((info->interface == FLASH_CFI_X8X16)
-		    && (info->chipwidth == FLASH_CFI_BY8)
-		    && (size_ratio != 1)) {
-			size_ratio >>= 1;
+	default:
+		dev_err(info->dev, "unsupported vendor\n");
+		return 0;
+	}
+	info->cfi_cmd_set->flash_read_jedec_ids (info);
+	flash_write_cmd (info, 0, info->cfi_offset, FLASH_CMD_CFI);
+
+	info->cfi_cmd_set->flash_fixup (info, &qry);
+
+	dev_dbg(info->dev, "manufacturer is %d\n", info->vendor);
+	dev_dbg(info->dev, "manufacturer id is 0x%x\n", info->manufacturer_id);
+	dev_dbg(info->dev, "device id is 0x%x\n", info->device_id);
+	dev_dbg(info->dev, "device id2 is 0x%x\n", info->device_id2);
+	dev_dbg(info->dev, "cfi version is 0x%04x\n", info->cfi_version);
+
+	size_ratio = info->portwidth / info->chipwidth;
+	/* if the chip is x8/x16 reduce the ratio by half */
+	if ((info->interface == FLASH_CFI_X8X16)
+	    && (info->chipwidth == FLASH_CFI_BY8)
+	    && (size_ratio != 1)) {
+		size_ratio >>= 1;
+	}
+	dev_dbg(info->dev, "size_ratio %d port %d bits chip %d bits\n",
+	       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
+	       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
+	dev_dbg(info->dev, "found %d erase regions\n", num_erase_regions);
+	info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
+	info->numeraseregions = num_erase_regions;
+	sect_cnt = 0;
+	sector = base;
+
+	for (i = 0; i < num_erase_regions; i++) {
+		struct mtd_erase_region_info *region = &info->eraseregions[i];
+
+		if (i > NUM_ERASE_REGIONS) {
+			dev_info(info->dev, "%d erase regions found, only %d used\n",
+				num_erase_regions, NUM_ERASE_REGIONS);
+			break;
 		}
-		dev_dbg(info->dev, "size_ratio %d port %d bits chip %d bits\n",
-		       size_ratio, info->portwidth << CFI_FLASH_SHIFT_WIDTH,
-		       info->chipwidth << CFI_FLASH_SHIFT_WIDTH);
-		dev_dbg(info->dev, "found %d erase regions\n", num_erase_regions);
-		info->eraseregions = xzalloc(sizeof(*(info->eraseregions)) * num_erase_regions);
-		info->numeraseregions = num_erase_regions;
-		sect_cnt = 0;
-		sector = base;
-
-		for (i = 0; i < num_erase_regions; i++) {
-			struct mtd_erase_region_info *region = &info->eraseregions[i];
-
-			if (i > NUM_ERASE_REGIONS) {
-				dev_info(info->dev, "%d erase regions found, only %d used\n",
-					num_erase_regions, NUM_ERASE_REGIONS);
-				break;
-			}
 
-			tmp = le32_to_cpu(qry.erase_region_info[i]);
-			dev_dbg(info->dev, "erase region %u: 0x%08lx\n", i, tmp);
-
-			erase_region_count = (tmp & 0xffff) + 1;
-			tmp >>= 16;
-			erase_region_size =
-				(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
-			dev_dbg(info->dev, "erase_region_count = %d erase_region_size = %d\n",
-				erase_region_count, erase_region_size);
-
-			region->offset = cur_offset;
-			region->erasesize = erase_region_size * size_ratio;
-			region->numblocks = erase_region_count;
-			cur_offset += erase_region_size * size_ratio * erase_region_count;
-
-			/* increase the space malloced for the sector start addresses */
-			info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
-			info->protect = xrealloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
-
-			for (j = 0; j < erase_region_count; j++) {
-				info->start[sect_cnt] = sector;
-				sector += (erase_region_size * size_ratio);
-
-				/*
-				 * Only read protection status from supported devices (intel...)
-				 */
-				switch (info->vendor) {
-				case CFI_CMDSET_INTEL_EXTENDED:
-				case CFI_CMDSET_INTEL_STANDARD:
-					info->protect[sect_cnt] =
-						flash_isset (info, sect_cnt,
-							     FLASH_OFFSET_PROTECT,
-							     FLASH_STATUS_PROTECT);
-					break;
-				default:
-					info->protect[sect_cnt] = 0; /* default: not protected */
-				}
-
-				sect_cnt++;
+		tmp = le32_to_cpu(qry.erase_region_info[i]);
+		dev_dbg(info->dev, "erase region %u: 0x%08lx\n", i, tmp);
+
+		erase_region_count = (tmp & 0xffff) + 1;
+		tmp >>= 16;
+		erase_region_size =
+			(tmp & 0xffff) ? ((tmp & 0xffff) * 256) : 128;
+		dev_dbg(info->dev, "erase_region_count = %d erase_region_size = %d\n",
+			erase_region_count, erase_region_size);
+
+		region->offset = cur_offset;
+		region->erasesize = erase_region_size * size_ratio;
+		region->numblocks = erase_region_count;
+		cur_offset += erase_region_size * size_ratio * erase_region_count;
+
+		/* increase the space malloced for the sector start addresses */
+		info->start = xrealloc(info->start, sizeof(ulong) * (erase_region_count + sect_cnt));
+		info->protect = xrealloc(info->protect, sizeof(uchar) * (erase_region_count + sect_cnt));
+
+		for (j = 0; j < erase_region_count; j++) {
+			info->start[sect_cnt] = sector;
+			sector += (erase_region_size * size_ratio);
+
+			/*
+			 * Only read protection status from supported devices (intel...)
+			 */
+			switch (info->vendor) {
+			case CFI_CMDSET_INTEL_EXTENDED:
+			case CFI_CMDSET_INTEL_STANDARD:
+				info->protect[sect_cnt] =
+					flash_isset (info, sect_cnt,
+						     FLASH_OFFSET_PROTECT,
+						     FLASH_STATUS_PROTECT);
+				break;
+			default:
+				info->protect[sect_cnt] = 0; /* default: not protected */
 			}
-		}
 
-		info->sector_count = sect_cnt;
-		/* multiply the size by the number of chips */
-		info->size = (1 << qry.dev_size) * size_ratio;
-		info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
-		info->erase_blk_tout = 1 << (qry.block_erase_timeout_typ +
-					     qry.block_erase_timeout_max);
-		info->buffer_write_tout = 1 << (qry.buf_write_timeout_typ +
-						qry.buf_write_timeout_max);
-		info->write_tout = 1 << (qry.word_write_timeout_typ +
-					 qry.word_write_timeout_max);
-		info->flash_id = FLASH_MAN_CFI;
-		if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8)) {
-			info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
+			sect_cnt++;
 		}
-		flash_write_cmd (info, 0, 0, info->cmd_reset);
 	}
 
+	info->sector_count = sect_cnt;
+	/* multiply the size by the number of chips */
+	info->size = (1 << qry.dev_size) * size_ratio;
+	info->buffer_size = (1 << le16_to_cpu(qry.max_buf_write_size));
+	info->erase_blk_tout = 1 << (qry.block_erase_timeout_typ +
+				     qry.block_erase_timeout_max);
+	info->buffer_write_tout = 1 << (qry.buf_write_timeout_typ +
+					qry.buf_write_timeout_max);
+	info->write_tout = 1 << (qry.word_write_timeout_typ +
+				 qry.word_write_timeout_max);
+	info->flash_id = FLASH_MAN_CFI;
+	if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8))
+		info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
+
+	flash_write_cmd (info, 0, 0, info->cmd_reset);
+
 	return info->size;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
