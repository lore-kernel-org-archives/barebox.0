Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cn-00029I-P6
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:24 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so931683wib.0
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:20 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:36 +0200
Message-Id: <1348973437-31132-9-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 8/9] omap4: add filesystem support over usb boot
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 arch/arm/mach-omap/xload.c |  26 ++++++
 fs/Kconfig                 |   5 +
 fs/Makefile                |   1 +
 fs/omap4_usbbootfs.c       | 223 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 255 insertions(+)
 create mode 100644 fs/omap4_usbbootfs.c

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 225b19a..5fda314 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -54,6 +54,26 @@ void *omap_xload_boot_mmc(void)
 	return buf;
 }
 
+#ifdef CONFIG_FS_OMAP4_USBBOOT
+void *omap4_xload_boot_usb(void){
+	int ret;
+	void *buf;
+	int len;
+
+	ret = mount("omap4_usbboot", "omap4_usbbootfs", "/");
+	if (ret) {
+		printf("Unable to mount omap4_usbbootfs (%d)\n", ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		printf("could not read barebox.bin from omap4_usbbootfs\n");
+
+	return buf;
+}
+#endif
+
 enum omap_boot_src omap_bootsrc(void)
 {
 #if defined(CONFIG_ARCH_OMAP3)
@@ -76,6 +96,12 @@ int run_shell(void)
 		printf("booting from MMC1\n");
 		func = omap_xload_boot_mmc();
 		break;
+#ifdef CONFIG_FS_OMAP4_USBBOOT
+	case OMAP_BOOTSRC_USB1:
+		printf("booting from USB1\n");
+		func = omap4_xload_boot_usb();
+		break;
+#endif
 	case OMAP_BOOTSRC_UNKNOWN:
 	default:
 		printf("unknown boot source. Fall back to nand\n");
diff --git a/fs/Kconfig b/fs/Kconfig
index 4c66543..0ab69d7 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -29,6 +29,11 @@ config FS_TFTP
 	prompt "tftp support"
 	depends on NET
 
+config FS_OMAP4_USBBOOT
+	bool
+	prompt "Filesystem over usb boot"
+	depends on OMAP4_USBBOOT
+
 config FS_NFS
 	depends on NET
 	bool
diff --git a/fs/Makefile b/fs/Makefile
index 1b52bee..ad745d9 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
+obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
new file mode 100644
index 0000000..874d530
--- /dev/null
+++ b/fs/omap4_usbbootfs.c
@@ -0,0 +1,223 @@
+/*
+ * omap4_usbbootfs.c
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
+ */
+#include <common.h>
+#include <malloc.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <init.h>
+#include <linux/stat.h>
+#include <linux/err.h>
+#include <mach/omap4_rom_usb.h>
+
+#define OMAP4_USBBOOT_FS_MAGIC		0x5562464D
+#define OMAP4_USBBOOT_FS_CMD_OPEN	0x46530000
+#define OMAP4_USBBOOT_FS_CMD_CLOSE	0x46530001
+#define OMAP4_USBBOOT_FS_CMD_READ	0x46530002
+#define OMAP4_USBBOOT_FS_CMD_END	0x4653FFFF
+
+struct file_priv {
+	s32 id;
+	u32 size;
+};
+/*
+static int omap4_usbbootfs_create(
+	struct device_d *dev, const char *pathname, mode_t mode)
+{
+	return -ENOSYS;
+}
+
+static int omap4_usbbootfs_unlink(struct device_d *dev, const char *pathname)
+{
+	return -ENOSYS;
+}
+
+static int omap4_usbbootfs_mkdir(struct device_d *dev, const char *pathname)
+{
+	return -ENOSYS;
+}
+
+static int omap4_usbbootfs_rmdir(struct device_d *dev, const char *pathname)
+{
+	return -ENOSYS;
+}
+
+static int omap4_usbbootfs_write(
+	struct device_d *_dev, FILE *f, const void *inbuf, size_t size)
+{
+	return -ENOSYS;
+}
+
+static int omap4_usbbootfs_truncate(struct device_d *dev, FILE *f, ulong size)
+{
+	return -ENOSYS;
+}
+*/
+
+static struct file_priv *omap4_usbbootfs_do_open(
+	struct device_d *dev, int accmode, const char *filename)
+{
+	struct file_priv *priv;
+	u32 data;
+
+	if (accmode & O_ACCMODE)
+		return ERR_PTR(-ENOSYS);
+
+	priv = xzalloc(sizeof(*priv));
+	if (!priv)
+		return ERR_PTR(-ENOMEM);
+
+	data = OMAP4_USBBOOT_FS_MAGIC	; omap4_usbboot_write(&data, 4);
+	data = OMAP4_USBBOOT_FS_CMD_OPEN; omap4_usbboot_write(&data, 4);
+	omap4_usbboot_puts(filename);
+	data = OMAP4_USBBOOT_FS_CMD_END	; omap4_usbboot_write(&data, 4);
+
+	if (omap4_usbboot_read(&priv->id, 4) ||
+		omap4_usbboot_read(&priv->size, 4)
+	) {
+		free(priv);
+		return ERR_PTR(-EIO);
+	}
+	if (priv->id < 0) {
+		free(priv);
+		return ERR_PTR(-ENOENT);
+	}
+
+	return priv;
+}
+
+static int omap4_usbbootfs_open(
+	struct device_d *dev, FILE *file, const char *filename)
+{
+	struct file_priv *priv;
+
+	priv = omap4_usbbootfs_do_open(dev, file->flags, filename);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
+
+	file->inode = priv;
+	file->size = priv->size;
+
+	return 0;
+}
+
+static int omap4_usbbootfs_do_close(struct file_priv *priv)
+{
+	u32 data;
+	data = OMAP4_USBBOOT_FS_MAGIC	; omap4_usbboot_write(&data, 4);
+	data = OMAP4_USBBOOT_FS_CMD_CLOSE; omap4_usbboot_write(&data, 4);
+	omap4_usbboot_write(&priv->id, 4);
+	data = OMAP4_USBBOOT_FS_CMD_END	; omap4_usbboot_write(&data, 4);
+	free(priv);
+	return 0;
+}
+
+static int omap4_usbbootfs_close(struct device_d *dev, FILE *f)
+{
+	struct file_priv *priv = f->inode;
+	return omap4_usbbootfs_do_close(priv);
+}
+
+static int omap4_usbbootfs_read(
+	struct device_d *dev, FILE *f, void *buf, size_t size)
+{
+	struct file_priv *priv = f->inode;
+	u32 data;
+
+	if (size > priv->size - f->pos)
+		size = priv->size - f->pos;
+	if (!size)
+		return 0;
+
+	data = OMAP4_USBBOOT_FS_MAGIC	; omap4_usbboot_write(&data, 4);
+	data = OMAP4_USBBOOT_FS_CMD_READ; omap4_usbboot_write(&data, 4);
+	omap4_usbboot_write(&priv->id, 4);
+	omap4_usbboot_write(&f->pos, 4);
+	omap4_usbboot_write(&size, 4);
+	data = OMAP4_USBBOOT_FS_CMD_END	; omap4_usbboot_write(&data, 4);
+
+	if (omap4_usbboot_read(buf, size))
+		return -EIO;
+
+	return size;
+}
+
+static loff_t omap4_usbbootfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
+{
+	f->pos = pos;
+	return pos;
+}
+
+static DIR *omap4_usbbootfs_opendir(struct device_d *dev, const char *pathname)
+{
+	return NULL;
+}
+
+static int omap4_usbbootfs_stat(
+	struct device_d *dev, const char *filename, struct stat *s)
+{
+	struct file_priv *priv;
+
+	priv = omap4_usbbootfs_do_open(dev, O_RDONLY, filename);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
+
+	s->st_mode = S_IFREG |
+				 S_IRUSR | S_IRGRP | S_IROTH |
+				 S_IXUSR | S_IXGRP | S_IXOTH ;
+	s->st_size = priv->size;
+
+	omap4_usbbootfs_do_close(priv);
+
+	return 0;
+}
+
+static int omap4_usbbootfs_probe(struct device_d *dev)
+{
+	return 0;
+}
+static void omap4_usbbootfs_remove(struct device_d *dev)
+{
+}
+
+static struct fs_driver_d omap4_usbbootfs_driver = {
+	.open    = omap4_usbbootfs_open,
+	.close   = omap4_usbbootfs_close,
+	.read    = omap4_usbbootfs_read,
+	.lseek   = omap4_usbbootfs_lseek,
+	.opendir = omap4_usbbootfs_opendir,
+	.stat    = omap4_usbbootfs_stat,
+/*
+	.create	= omap4_usbbootfs_create,
+	.unlink	= omap4_usbbootfs_unlink,
+	.mkdir	= omap4_usbbootfs_mkdir,
+	.rmdir	= omap4_usbbootfs_rmdir,
+	.write	= omap4_usbbootfs_write,
+	.truncate= omap4_usbbootfs_truncate,
+*/
+	.flags	 = 0,
+	.drv = {
+		.probe	= omap4_usbbootfs_probe,
+		.remove	= omap4_usbbootfs_remove,
+		.name	= "omap4_usbbootfs",
+	}
+};
+
+static int omap4_usbbootfs_init(void)
+{
+	return register_fs_driver(&omap4_usbbootfs_driver);
+}
+coredevice_initcall(omap4_usbbootfs_init);
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
