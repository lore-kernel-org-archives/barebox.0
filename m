Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SA-Ny
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:36 +0200
Message-Id: <1401956624-31802-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] fix format specifiers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c        | 4 ++--
 common/uimage.c       | 4 +++-
 drivers/eeprom/at25.c | 4 ++--
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 871959c..71390cb 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -312,7 +312,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
-		printf("OS image is at 0x%08x-0x%08x\n",
+		printf("OS image is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
 				data->os_res->start,
 				data->os_res->end);
 	else
@@ -329,7 +329,7 @@ static void bootm_print_info(struct image_data *data)
 			printf(", multifile image %d", data->initrd_num);
 		printf("\n");
 		if (data->initrd_res)
-			printf("initrd is at 0x%08x-0x%08x\n",
+			printf("initrd is at " PRINTF_CONVERSION_RESOURCE "-" PRINTF_CONVERSION_RESOURCE "\n",
 				data->initrd_res->start,
 				data->initrd_res->end);
 		else
diff --git a/common/uimage.c b/common/uimage.c
index 243dfb0..4ef0968 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -353,7 +353,9 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 		uimage_resource = request_sdram_region("uimage",
 				start, size);
 		if (!uimage_resource) {
-			printf("unable to request SDRAM 0x%08x-0x%08x\n",
+			printf("unable to request SDRAM "
+					PRINTF_CONVERSION_RESOURCE "-"
+					PRINTF_CONVERSION_RESOURCE "\n",
 				start, start + size - 1);
 			return -ENOMEM;
 		}
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 266f261..3e75b56 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -117,8 +117,8 @@ static ssize_t at25_ee_read(struct cdev *cdev,
 	 */
 	status = spi_sync(at25->spi, &m);
 	dev_dbg(at25->cdev.dev,
-		"read %d bytes at %llu --> %d\n",
-		count, offset, (int) status);
+		"read %zd bytes at %llu --> %zd\n",
+		count, offset, status);
 
 	return status ? status : count;
 }
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
