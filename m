Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NbtYp-0003Yi-Qw
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 10:31:23 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  1 Feb 2010 11:31:03 +0100
Message-Id: <1265020263-21417-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1265020263-21417-2-git-send-email-mkl@pengutronix.de>
References: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
	<1265020263-21417-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] cfi_flash: fix alignment problem
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This patch fixes a alignment problem which may show during this
scenario:
- 32 or 64 attached NOR flash
- flashing an image directly from network to the nor flash

The involved network driver is "smc9111.c".

The data that comes from the network stack and should be written into
the flash isn't 32 bit alligned (at least with this network driver).
This is probably due to the 48 bit wide ethernet addresses.

However the "cfi_flash.c" driver doesn't handle this situation, and
accesses the not-alligned address with a 32 bit pointer.

This patch fixes the problem by reducing the access width if an
alligment problem between source and destination is found.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/nor/cfi_flash.c |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 37206d0..bdef856 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -1336,6 +1336,10 @@ static int flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar *
 	volatile cfiptr_t src;
 	volatile cfiptr_t dst;
 
+	/* reduce width due to possible alignment problems */
+	const unsigned long ptr = (unsigned long)dest | (unsigned long)cp | info->portwidth;
+	const int width = ptr & -ptr;
+
 	switch (info->vendor) {
 	case CFI_CMDSET_INTEL_STANDARD:
 	case CFI_CMDSET_INTEL_EXTENDED:
@@ -1347,7 +1351,7 @@ static int flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar *
 		if ((retcode = flash_status_check (info, sector, info->buffer_write_tout,
 						   "write to buffer")) == ERR_OK) {
 			/* reduce the number of loops by the width of the port	*/
-			switch (info->portwidth) {
+			switch (width) {
 			case FLASH_CFI_8BIT:
 				cnt = len;
 				break;
@@ -1366,7 +1370,7 @@ static int flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar *
 			}
 			flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
 			while (cnt-- > 0) {
-				switch (info->portwidth) {
+				switch (width) {
 				case FLASH_CFI_8BIT:
 					*dst.cp++ = *src.cp++;
 					break;
@@ -1401,7 +1405,7 @@ static int flash_write_cfibuffer (flash_info_t * info, ulong dest, const uchar *
 		flash_unlock_seq(info,0);
 		flash_write_cmd (info, sector, 0, AMD_CMD_WRITE_TO_BUFFER);
 
-		switch (info->portwidth) {
+		switch (width) {
 		case FLASH_CFI_8BIT:
 			cnt = len;
 			flash_write_cmd (info, sector, 0,  (uchar) cnt - 1);
-- 
1.6.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
