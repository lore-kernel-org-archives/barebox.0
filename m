Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gz9-0005Jy-07
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:54:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2019 08:54:08 +0200
Message-Id: <20190822065408.29279-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190822065408.29279-1-a.fatoum@pengutronix.de>
References: <20190822065408.29279-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] fs: omap4_usbbootfs: remove commented out code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The code has been sitting commented out in version control for close
to 7 years now, drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/omap4_usbbootfs.c | 41 -----------------------------------------
 1 file changed, 41 deletions(-)

diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 169cde7ddb0f..4f159210d1e5 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -29,39 +29,6 @@ struct file_priv {
 	s32 id;
 	u32 size;
 };
-/*
-static int omap4_usbbootfs_create(
-	struct device_d *dev, const char *pathname, mode_t mode)
-{
-	return -ENOSYS;
-}
-
-static int omap4_usbbootfs_unlink(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int omap4_usbbootfs_mkdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int omap4_usbbootfs_rmdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int omap4_usbbootfs_write(
-	struct device_d *_dev, FILE *f, const void *inbuf, size_t size)
-{
-	return -ENOSYS;
-}
-
-static int omap4_usbbootfs_truncate(struct device_d *dev, FILE *f, loff_t size)
-{
-	return -ENOSYS;
-}
-*/
 
 static struct file_priv *omap4_usbbootfs_do_open(
 	struct device_d *dev, int accmode, const char *filename)
@@ -187,14 +154,6 @@ static struct fs_driver_d omap4_usbbootfs_driver = {
 	.read    = omap4_usbbootfs_read,
 	.opendir = omap4_usbbootfs_opendir,
 	.stat    = omap4_usbbootfs_stat,
-/*
-	.create	= omap4_usbbootfs_create,
-	.unlink	= omap4_usbbootfs_unlink,
-	.mkdir	= omap4_usbbootfs_mkdir,
-	.rmdir	= omap4_usbbootfs_rmdir,
-	.write	= omap4_usbbootfs_write,
-	.truncate= omap4_usbbootfs_truncate,
-*/
 	.flags	 = 0,
 	.drv = {
 		.probe	= omap4_usbbootfs_probe,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
