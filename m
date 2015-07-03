Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAvjl-000690-1I
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 07:50:18 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  3 Jul 2015 09:49:54 +0200
Message-Id: <1435909794-17349-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2] mtd: mark devname argument of add_mtd_device as const
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This patch fixes the following warning:

| drivers/mtd/devices/m25p80.c: In function 'm25p_probe':
| drivers/mtd/devices/m25p80.c:271:14: warning: assignment discards 'const' qualifier from pointer target type
|   flash_name = dev->id_entry->name;
|                 ^

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/mtd/core.c           | 2 +-
 drivers/mtd/devices/m25p80.c | 2 +-
 drivers/mtd/mtd.h            | 2 +-
 drivers/mtd/mtdoob.c         | 2 +-
 drivers/mtd/mtdraw.c         | 2 +-
 include/linux/mtd/mtd.h      | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 681dc9313c3a..8b8254c2d3a8 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -542,7 +542,7 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 	return 0;
 }
 
-int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
+int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 {
 	struct mtddev_hook *hook;
 	int ret;
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index c941767de94c..7f955ee28716 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -233,7 +233,7 @@ static int m25p_probe(struct device_d *dev)
 	struct m25p			*flash;
 	struct spi_nor			*nor;
 	enum read_mode mode =		SPI_NOR_NORMAL;
-	char				*flash_name = NULL;
+	const char			*flash_name = NULL;
 	int				device_id;
 	int ret;
 
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
index 414bd6cdb53a..2a85265f98bd 100644
--- a/drivers/mtd/mtd.h
+++ b/drivers/mtd/mtd.h
@@ -25,7 +25,7 @@
  */
 struct mtddev_hook {
 	struct list_head hook;
-	int (*add_mtd_device)(struct mtd_info *mtd, char *devname, void **priv);
+	int (*add_mtd_device)(struct mtd_info *mtd, const char *devname, void **priv);
 	int (*del_mtd_device)(struct mtd_info *mtd, void **priv);
 	void *priv;
 };
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 10d17e90d27f..6160ddba0804 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -69,7 +69,7 @@ static struct file_operations mtd_ops_oob = {
 	.lseek  = dev_lseek_default,
 };
 
-static int add_mtdoob_device(struct mtd_info *mtd, char *devname, void **priv)
+static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **priv)
 {
 	struct mtdoob *mtdoob;
 
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index c25e4062eea9..ae4bec2a4cbf 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -281,7 +281,7 @@ static const struct file_operations mtd_raw_fops = {
 	.lseek		= dev_lseek_default,
 };
 
-static int add_mtdraw_device(struct mtd_info *mtd, char *devname, void **priv)
+static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **priv)
 {
 	struct mtdraw *mtdraw;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 33f1fd512ddd..7e828bc98f92 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -270,7 +270,7 @@ static inline uint32_t mtd_div_by_wb(uint64_t sz, struct mtd_info *mtd)
 
 	/* Kernel-side ioctl definitions */
 
-extern int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id);
+extern int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id);
 extern int del_mtd_device (struct mtd_info *mtd);
 
 extern struct mtd_info *get_mtd_device(struct mtd_info *mtd, int num);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
