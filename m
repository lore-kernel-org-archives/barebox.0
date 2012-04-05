Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFiXL-0005um-6A
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 08:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 10:59:15 +0200
Message-Id: <1333616355-632-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
References: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] cfi flash: Fix alignment problem
To: barebox@lists.infradead.org

The intel cfi buffer write has a problem with writing when
the alignment of the buffer in memory is smaller than the
flash bus width.

This patch fixes a alignment problem which may show during this
scenario:
- 32 or 64 attached NOR flash
- flashing an image directly from network to the nor flash

The involved network driver is "smc9111.c".

The data that comes from the network stack and should be written into
the flash isn't 32 bit aligned (at least with this network driver).
This is probably due to the 48 bit wide ethernet addresses.

However the "cfi_flash.c" driver doesn't handle this situation, and
accesses the not-aligned address with a 32 bit pointer.

This patch fixes the problem by reducing the access width if an
aligment problem between source and destination is found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_intel.c |   18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index f0cbf72..32e581a 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -57,6 +57,9 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 	int retcode;
 	void *src = (void*)cp;
 	void *dst = (void *)dest;
+	/* reduce width due to possible alignment problems */
+	const unsigned long ptr = (unsigned long)dest | (unsigned long)cp | info->portwidth;
+	const int width = ptr & -ptr;
 
 	sector = find_sector (info, dest);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
@@ -70,20 +73,25 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 	/* reduce the number of loops by the width of the port	*/
 	cnt = len / width;
 
-	flash_write_cmd(info, sector, 0, (u32)cnt - 1);
+	flash_write_cmd(info, sector, 0, cnt - 1);
 	while (cnt-- > 0) {
-		if (bankwidth_is_1(info)) {
+		switch (width) {
+		case 1:
 			flash_write8(flash_read8(src), dst);
 			src += 1, dst += 1;
-		} else if (bankwidth_is_2(info)) {
+			break;
+		case 2:
 			flash_write16(flash_read16(src), dst);
 			src += 2, dst += 2;
-		} else if (bankwidth_is_4(info)) {
+			break;
+		case 4:
 			flash_write32(flash_read32(src), dst);
 			src += 4, dst += 4;
-		} else if (bankwidth_is_8(info)) {
+			break;
+		case 8:
 			flash_write64(flash_read64(src), dst);
 			src += 8, dst += 8;
+			break;
 		}
 	}
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
