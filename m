Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTxk-00058X-9g
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:47:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2010 14:47:28 +0100
Message-Id: <1265636852-19054-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1265636852-19054-2-git-send-email-s.hauer@pengutronix.de>
References: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] cfi_flash_new: Safe indention level by bailing out
	earlier in error case
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_intel.c |   45 +++++++++++++++++++++-------------------
 1 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 968b9d0..142fb0e 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -69,29 +69,32 @@ static int intel_flash_write_cfibuffer (flash_info_t * info, ulong dest, const u
 	sector = find_sector (info, dest);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
 	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_TO_BUFFER);
-	if ((retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
-					   "write to buffer")) == ERR_OK) {
-		/* reduce the number of loops by the width of the port	*/
-		cnt = len >> (info->portwidth - 1);
-
-		flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
-		while (cnt-- > 0) {
-			if (bankwidth_is_1(info)) {
-				*dst.cp++ = *src.cp++;
-			} else if (bankwidth_is_2(info)) {
-				*dst.wp++ = *src.wp++;
-			} else if (bankwidth_is_4(info)) {
-				*dst.lp++ = *src.lp++;
-			} else if (bankwidth_is_8(info)) {
-				*dst.llp++ = *src.llp++;
-			}
+
+	retcode = flash_generic_status_check (info, sector, info->buffer_write_tout,
+					   "write to buffer");
+	if (retcode != ERR_OK)
+		return retcode;
+
+	/* reduce the number of loops by the width of the port	*/
+	cnt = len >> (info->portwidth - 1);
+
+	flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
+	while (cnt-- > 0) {
+		if (bankwidth_is_1(info)) {
+			*dst.cp++ = *src.cp++;
+		} else if (bankwidth_is_2(info)) {
+			*dst.wp++ = *src.wp++;
+		} else if (bankwidth_is_4(info)) {
+			*dst.lp++ = *src.lp++;
+		} else if (bankwidth_is_8(info)) {
+			*dst.llp++ = *src.llp++;
 		}
-		flash_write_cmd (info, sector, 0,
-				 FLASH_CMD_WRITE_BUFFER_CONFIRM);
-		retcode = flash_status_check (info, sector,
-						   info->buffer_write_tout,
-						   "buffer write");
 	}
+
+	flash_write_cmd (info, sector, 0, FLASH_CMD_WRITE_BUFFER_CONFIRM);
+	retcode = flash_status_check (info, sector,
+					   info->buffer_write_tout,
+					   "buffer write");
 	return retcode;
 }
 #else
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
