Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TL-0004xm-SK
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:40 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:24 +0100
Message-Id: <20201109134430.21156-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/8] mtd: cfi_flash: allow 0x0 mapping
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Annotate the different read and write functions with
zero_page_{access/faulting}. This allows the cfi_flash driver to be used
on the QEMU virt machine with an enabled MMU.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c |  6 ++++++
 drivers/mtd/nor/cfi_flash.h | 18 ++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 225b03ec3d..2fcbd13e46 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -896,8 +896,10 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 {
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 
+	zero_page_access();
 	memcpy(buf, info->base + from, len);
 	*retlen = len;
+	zero_page_faulting();
 
 	return 0;
 }
@@ -908,7 +910,9 @@ static int cfi_mtd_write(struct mtd_info *mtd, loff_t to, size_t len,
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 	int ret;
 
+	zero_page_access();
 	ret = write_buff(info, buf, (unsigned long)info->base + to, len);
+	zero_page_faulting();
 	*retlen = len;
 
         return ret;
@@ -919,7 +923,9 @@ static int cfi_mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 	int ret;
 
+	zero_page_access();
 	ret = cfi_erase(info, instr->len, instr->addr);
+	zero_page_faulting();
 	if (ret)
 		return -EIO;
 
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index cea6a8712c..99359a325e 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -22,6 +22,8 @@
 #include <io.h>
 #include <linux/mtd/mtd.h>
 
+#include <zero_page.h>
+
 typedef unsigned long flash_sect_t;
 
 #if   defined(CONFIG_DRIVER_CFI_BANK_WIDTH_8)
@@ -255,43 +257,59 @@ void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
 
 static inline void flash_write8(u8 value, void *addr)
 {
+	zero_page_access();
 	__raw_writeb(value, addr);
+	zero_page_faulting();
 }
 
 static inline void flash_write16(u16 value, void *addr)
 {
+	zero_page_access();
 	__raw_writew(value, addr);
+	zero_page_faulting();
 }
 
 static inline void flash_write32(u32 value, void *addr)
 {
+	zero_page_access();
 	__raw_writel(value, addr);
+	zero_page_faulting();
 }
 
 static inline void flash_write64(u64 value, void *addr)
 {
+	zero_page_access();
 	memcpy((void *)addr, &value, 8);
+	zero_page_faulting();
 }
 
 static inline u8 flash_read8(void *addr)
 {
+	zero_page_access();
 	return __raw_readb(addr);
+	zero_page_faulting();
 }
 
 static inline u16 flash_read16(void *addr)
 {
+	zero_page_access();
 	return __raw_readw(addr);
+	zero_page_faulting();
 }
 
 static inline u32 flash_read32(void *addr)
 {
+	zero_page_access();
 	return __raw_readl(addr);
+	zero_page_faulting();
 }
 
 static inline u64 flash_read64(void *addr)
 {
+	zero_page_access();
 	/* No architectures currently implement readq() */
 	return *(volatile u64 *)addr;
+	zero_page_faulting();
 }
 
 /*
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
