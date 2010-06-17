Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OP5gs-00024p-5E
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 03:22:55 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 17 Jun 2010 05:22:45 +0200
Message-Id: <1276744965-994-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] drivers/nor: allow overriding of AMD_ADDR_* in board-configs
To: barebox@lists.infradead.org

Because there are a number of flash-makers who did it wrong.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/nor/cfi_flash.h |   13 ++++++++++---
 1 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index a8fa879..a278772 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -109,9 +109,16 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define AMD_STATUS_TOGGLE		0x40
 #define AMD_STATUS_ERROR		0x20
 
-#define AMD_ADDR_ERASE_START	((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
-#define AMD_ADDR_START		((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
-#define AMD_ADDR_ACK		((info->portwidth == FLASH_CFI_8BIT) ? 0x555 : 0x2AA)
+/* AMD_ADDR_* can be overridden in board-specific config.h files */
+#ifndef AMD_ADDR_ERASE_START
+#  define AMD_ADDR_ERASE_START	((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
+#endif
+#ifndef AMD_ADDR_START
+#  define AMD_ADDR_START	((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
+#endif
+#ifndef AMD_ADDR_ACK
+#  define AMD_ADDR_ACK		((info->portwidth == FLASH_CFI_8BIT) ? 0x555 : 0x2AA)
+#endif
 
 #define FLASH_OFFSET_MANUFACTURER_ID	0x00
 #define FLASH_OFFSET_DEVICE_ID		0x01
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
