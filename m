Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xIM-00030Z-Rv
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:41:03 +0200
Message-Id: <1434962466-23590-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] mtd: cfi-flash: turn some messages into vdbg
To: Barebox List <barebox@lists.infradead.org>

Some messages produce a lot of log spam. Turn them into
dev_vdbg to make some more important messages more visible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 12 ++++++------
 drivers/mtd/nor/cfi_flash.h | 12 ++++--------
 2 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 4165c88..eb16749 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -828,7 +828,7 @@ void flash_write_cmd(struct flash_info *info, flash_sect_t sect,
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 
-	dev_dbg(info->dev, "%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
+	dev_vdbg(info->dev, "%s: %p %lX %X => %p " CFI_WORD_FMT "\n", __func__,
 			info, sect, offset, addr, cword);
 
 	flash_write_word(info, cword, addr);
@@ -844,18 +844,18 @@ int flash_isequal(struct flash_info *info, flash_sect_t sect,
 	addr = flash_make_addr (info, sect, offset);
 	flash_make_cmd (info, cmd, &cword);
 
-	dev_dbg(info->dev, "is= cmd %x(%c) addr %p ", cmd, cmd, addr);
+	dev_vdbg(info->dev, "is= cmd %x(%c) addr %p ", cmd, cmd, addr);
 	if (bankwidth_is_1(info)) {
-		dev_dbg(info->dev, "is= %x %x\n", flash_read8(addr), (u8)cword);
+		dev_vdbg(info->dev, "is= %x %x\n", flash_read8(addr), (u8)cword);
 		retval = (flash_read8(addr) == cword);
 	} else if (bankwidth_is_2(info)) {
-		dev_dbg(info->dev, "is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
+		dev_vdbg(info->dev, "is= %4.4x %4.4x\n", flash_read16(addr), (u16)cword);
 		retval = (flash_read16(addr) == cword);
 	} else if (bankwidth_is_4(info)) {
-		dev_dbg(info->dev, "is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
+		dev_vdbg(info->dev, "is= %8.8x %8.8x\n", flash_read32(addr), (u32)cword);
 		retval = (flash_read32(addr) == cword);
 	} else if (bankwidth_is_8(info)) {
-		dev_dbg(info->dev, "is= %16.16llx %16.16llx\n", flash_read64(addr), (u64)cword);
+		dev_vdbg(info->dev, "is= %16.16llx %16.16llx\n", flash_read64(addr), (u64)cword);
 		retval = (flash_read64(addr) == cword);
 	} else
 		retval = 0;
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 8f33bdf..25d2e58 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -332,18 +332,14 @@ u32 jedec_read_mfr(struct flash_info *info);
 
 static inline void flash_write_word(struct flash_info *info, cfiword_t datum, void *addr)
 {
-	if (bankwidth_is_1(info)) {
-		debug("fw addr %p val %02x\n", addr, (u8)datum);
+	if (bankwidth_is_1(info))
 		flash_write8(datum, addr);
-	} else if (bankwidth_is_2(info)) {
-		debug("fw addr %p val %04x\n", addr, (u16)datum);
+	else if (bankwidth_is_2(info))
 		flash_write16(datum, addr);
-	} else if (bankwidth_is_4(info)) {
-		debug("fw addr %p val %08x\n", addr, (u32)datum);
+	else if (bankwidth_is_4(info))
 		flash_write32(datum, addr);
-	} else if (bankwidth_is_8(info)) {
+	else if (bankwidth_is_8(info))
 		flash_write64(datum, addr);
-	}
 }
 
 extern void flash_print_info (struct flash_info *);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
