Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4Pa-0002wb-Tn
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:53 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:31 +0100
Message-Id: <1290801161-2417-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/12] cfi_flash: add Atmel real protect flash support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

based on U-Boot

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.h     |    4 ++++
 drivers/nor/cfi_flash_amd.c |   17 +++++++++++++++++
 2 files changed, 21 insertions(+), 0 deletions(-)

diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index ee1a6f0..047a035 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -121,6 +121,10 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
 #define AMD_ADDR_START		((info->portwidth == FLASH_CFI_8BIT) ? 0xAAA : 0x555)
 #define AMD_ADDR_ACK		((info->portwidth == FLASH_CFI_8BIT) ? 0x555 : 0x2AA)
 
+#define ATM_CMD_UNLOCK_SECT		0x70
+#define ATM_CMD_SOFTLOCK_START		0x80
+#define ATM_CMD_LOCK_SECT		0x40
+
 #define FLASH_OFFSET_MANUFACTURER_ID	0x00
 #define FLASH_OFFSET_DEVICE_ID		0x01
 #define FLASH_OFFSET_DEVICE_ID2		0x0E
diff --git a/drivers/nor/cfi_flash_amd.c b/drivers/nor/cfi_flash_amd.c
index b10f7b2..dffd6f0 100644
--- a/drivers/nor/cfi_flash_amd.c
+++ b/drivers/nor/cfi_flash_amd.c
@@ -135,6 +135,23 @@ static int amd_flash_write_cfibuffer (struct flash_info *info, ulong dest, const
 
 static int amd_flash_real_protect (struct flash_info *info, long sector, int prot)
 {
+	if (info->manufacturer_id != (uchar)ATM_MANUFACT)
+		return 0;
+
+	if (prot) {
+		flash_unlock_seq (info);
+		flash_write_cmd (info, 0, AMD_ADDR_START,
+				 ATM_CMD_SOFTLOCK_START);
+		flash_unlock_seq (info);
+		flash_write_cmd (info, sector, 0, ATM_CMD_LOCK_SECT);
+	} else {
+		flash_write_cmd (info, 0, AMD_ADDR_START,
+				 AMD_CMD_UNLOCK_START);
+		if (info->device_id == ATM_ID_BV6416)
+			flash_write_cmd (info, sector, 0,
+					 ATM_CMD_UNLOCK_SECT);
+	}
+
 	return 0;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
