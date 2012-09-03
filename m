Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8V6h-0001IR-G3
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:46:21 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon,  3 Sep 2012 13:45:57 +0200
Message-Id: <1346672765-16162-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 02/10] drivers/nor/m25p80: add MEMGETINFO ioctl
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/nor/m25p80.c |   26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 61f2195..1722e0a 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -20,6 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
+#include <ioctl.h>
 #include <spi/spi.h>
 #include <spi/flash.h>
 #include <xfuncs.h>
@@ -690,9 +691,34 @@ static const struct spi_device_id *jedec_probe(struct spi_device *spi)
 	return NULL;
 }
 
+static int m25p80_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	struct m25p *flash = cdev->priv;
+	struct flash_info *info = flash->info;
+	struct mtd_info_user *user = buf;
+
+	switch (request) {
+	case MEMGETINFO:
+		memset(user, 0, sizeof(*user));
+		user->type = MTD_NORFLASH;
+		user->flags = MTD_CAP_NORFLASH;
+		user->size = flash->size;
+		user->erasesize = info->sector_size;
+		user->writesize = 1;
+		user->oobsize = 0;
+		/* The below fields are obsolete */
+		user->ecctype = -1;
+		user->eccsize = 0;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static struct file_operations m25p80_ops = {
 	.read   = m25p80_read,
 	.write  = m25p80_write,
+	.ioctl  = m25p80_ioctl,
 	.erase  = m25p80_erase,
 	.lseek  = dev_lseek_default,
 };
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
