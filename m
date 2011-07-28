Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNTj-0000qM-EJ
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:06:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:05:57 +0200
Message-Id: <1311847560-22946-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM i.MX IIM: Add a iim read function
To: barebox@lists.infradead.org

To allow reading the iim from code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c              |   28 ++++++++++++++++++++++++----
 arch/arm/mach-imx/include/mach/iim.h |    7 +++++++
 2 files changed, 31 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 0774ebb..7a8712b 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -22,6 +22,8 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <param.h>
+#include <fcntl.h>
+#include <malloc.h>
 
 #include <asm/io.h>
 
@@ -73,7 +75,7 @@ static int do_fuse_sense(unsigned long reg_base, unsigned int bank,
 	return readb(reg_base + IIM_SDAT);
 }
 
-static ssize_t imx_iim_read(struct cdev *cdev, void *buf, size_t count,
+static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 		ulong offset, ulong flags)
 {
 	ulong size, i;
@@ -168,7 +170,7 @@ out:
 }
 #endif /* CONFIG_IMX_IIM_FUSE_BLOW */
 
-static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
+static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 		ulong offset, ulong flags)
 {
 	ulong size, i;
@@ -204,8 +206,8 @@ static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
 }
 
 static struct file_operations imx_iim_ops = {
-	.read	= imx_iim_read,
-	.write	= imx_iim_write,
+	.read	= imx_iim_cdev_read,
+	.write	= imx_iim_cdev_write,
 	.lseek	= dev_lseek_default,
 };
 
@@ -297,6 +299,24 @@ static int imx_iim_init(void)
 }
 coredevice_initcall(imx_iim_init);
 
+int imx_iim_read(unsigned int bank, int offset, int count, void *buf)
+{
+	struct cdev *cdev;
+	char *name = asprintf(DRIVERNAME "_bank%d", bank);
+	int ret;
+
+	cdev = cdev_open(name, O_RDONLY);
+	if (!cdev)
+		return -ENODEV;
+
+	ret = cdev_read(cdev, buf, count, offset, 0);
+
+	cdev_close(cdev);
+	free(name);
+
+	return ret;
+}
+
 int imx_iim_get_mac(unsigned char *mac)
 {
 	int i;
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index 03ff485..9ff44be 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -46,8 +46,15 @@ struct imx_iim_platform_data {
 };
 
 #ifdef CONFIG_IMX_IIM
+int imx_iim_read(unsigned int bank, int offset, int count, void *buf);
 int imx_iim_get_mac(unsigned char *mac);
 #else
+static inline int imx_iim_read(unsigned int bank, int offset, int count,
+		void *buf)
+{
+	return -EINVAL;
+}
+
 static inline int imx_iim_get_mac(unsigned char *mac)
 {
 	return -EINVAL;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
