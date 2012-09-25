Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe7I-0007PZ-8M
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:37 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so996925wey.36
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:35 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:53 +0200
Message-Id: <1348613994-1793-7-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
References: <[RFC][PATCH] archosg9: add support for tablet>
 <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 6/7] add filesystem support over the same USB used for booting
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 fs/Kconfig     |   5 ++
 fs/Makefile    |   1 +
 fs/usbbootfs.c | 195 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 201 insertions(+)
 create mode 100644 fs/usbbootfs.c

diff --git a/fs/Kconfig b/fs/Kconfig
index 4c66543..1b89aec 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -29,6 +29,11 @@ config FS_TFTP
 	prompt "tftp support"
 	depends on NET
 
+config FS_USBBOOT
+	bool
+	prompt "Filesystem over usb boot"
+	depends on USB_BOOT
+
 config FS_NFS
 	depends on NET
 	bool
diff --git a/fs/Makefile b/fs/Makefile
index 1b52bee..d4f9a59 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
+obj-$(CONFIG_FS_USBBOOT)	+= usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o
diff --git a/fs/usbbootfs.c b/fs/usbbootfs.c
new file mode 100644
index 0000000..a40abbf
--- /dev/null
+++ b/fs/usbbootfs.c
@@ -0,0 +1,195 @@
+/*
+ * usbbootfs.c
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
+#define USBBOOT_FS_MAGIC     0x5562464D
+#define USBBOOT_FS_CMD_OPEN  0x46530000
+#define USBBOOT_FS_CMD_CLOSE 0x46530001
+#define USBBOOT_FS_CMD_READ  0x46530002
+#define USBBOOT_FS_CMD_END   0x4653FFFF
+
+struct file_priv {
+    s32 id;
+    u32 size;
+};
+/*
+static int usbbootfs_create(struct device_d *dev, const char *pathname, mode_t mode){
+    return -ENOSYS;
+}
+
+static int usbbootfs_unlink(struct device_d *dev, const char *pathname){
+    return -ENOSYS;
+}
+
+static int usbbootfs_mkdir(struct device_d *dev, const char *pathname){
+    return -ENOSYS;
+}
+
+static int usbbootfs_rmdir(struct device_d *dev, const char *pathname){
+    return -ENOSYS;
+}
+
+static int usbbootfs_write(struct device_d *_dev, FILE *f, const void *inbuf, size_t size){
+    return -ENOSYS;
+}
+
+static int usbbootfs_truncate(struct device_d *dev, FILE *f, ulong size){
+    return -ENOSYS;
+}
+*/
+
+static struct file_priv *usbbootfs_do_open(struct device_d *dev, int accmode, const char *filename){
+    struct file_priv *priv;
+    u32 data;
+
+    if(accmode & O_ACCMODE)
+        return ERR_PTR(-ENOSYS);
+
+    priv = xzalloc(sizeof(*priv));
+    if(!priv)
+        return ERR_PTR(-ENOMEM);
+
+    data = USBBOOT_FS_MAGIC   ; usb_write(&data, 4);
+    data = USBBOOT_FS_CMD_OPEN; usb_write(&data, 4);
+    usb_puts(filename);
+    data = USBBOOT_FS_CMD_END ; usb_write(&data, 4);
+    
+    if(usb_read(&priv->id, 4) || usb_read(&priv->size, 4)){
+        free(priv);
+        return ERR_PTR(-EIO);
+    }
+    if(priv->id<0){
+        free(priv);
+        return ERR_PTR(-ENOENT);
+    }
+    
+    return priv;
+}
+
+static int usbbootfs_open(struct device_d *dev, FILE *file, const char *filename){
+    struct file_priv *priv;
+
+    priv = usbbootfs_do_open(dev, file->flags, filename);
+    if (IS_ERR(priv))
+        return PTR_ERR(priv);
+
+    file->inode = priv;
+    file->size = priv->size;
+
+    return 0;
+}
+
+static int usbbootfs_do_close(struct file_priv *priv){
+    u32 data;
+    data = USBBOOT_FS_MAGIC    ; usb_write(&data, 4);
+    data = USBBOOT_FS_CMD_CLOSE; usb_write(&data, 4);
+    usb_write(&priv->id, 4);
+    data = USBBOOT_FS_CMD_END  ; usb_write(&data, 4);
+    free(priv);
+    return 0;
+}
+
+static int usbbootfs_close(struct device_d *dev, FILE *f){
+    struct file_priv *priv = f->inode;
+    return usbbootfs_do_close(priv);
+}
+
+static int usbbootfs_read(struct device_d *dev, FILE *f, void *buf, size_t size){
+    struct file_priv *priv = f->inode;
+    u32 data;
+
+    if( size > priv->size - f->pos)
+        size = priv->size - f->pos;
+    if(!size)
+        return 0;
+
+    data = USBBOOT_FS_MAGIC   ; usb_write(&data, 4);
+    data = USBBOOT_FS_CMD_READ; usb_write(&data, 4);
+    usb_write(&priv->id, 4);
+    usb_write(&f->pos, 4);
+    usb_write(&size, 4);
+    data = USBBOOT_FS_CMD_END ; usb_write(&data, 4);
+
+    if(usb_read(buf, size))
+        return -EIO;
+
+    return size;
+}
+
+static loff_t usbbootfs_lseek(struct device_d *dev, FILE *f, loff_t pos){
+    f->pos = pos;
+    return pos;
+}
+
+static DIR* usbbootfs_opendir(struct device_d *dev, const char *pathname){
+    return NULL;
+}
+
+static int usbbootfs_stat(struct device_d *dev, const char *filename, struct stat *s){
+    struct file_priv *priv;
+
+    priv = usbbootfs_do_open(dev, O_RDONLY, filename);
+    if (IS_ERR(priv))
+        return PTR_ERR(priv);
+
+    s->st_mode = S_IFREG |
+                 S_IRUSR | S_IRGRP | S_IROTH |
+                 S_IXUSR | S_IXGRP | S_IXOTH ;
+    s->st_size = priv->size;
+
+    usbbootfs_do_close(priv);
+
+    return 0;
+}
+
+static int usbbootfs_probe(struct device_d *dev){ return 0; }
+static void usbbootfs_remove(struct device_d *dev){}
+
+static struct fs_driver_d usbbootfs_driver = {
+    .open      = usbbootfs_open,
+    .close     = usbbootfs_close,
+    .read      = usbbootfs_read,
+    .lseek     = usbbootfs_lseek,
+    .opendir   = usbbootfs_opendir,
+    .stat      = usbbootfs_stat,
+/*
+    .create    = usbbootfs_create,
+    .unlink    = usbbootfs_unlink,
+    .mkdir     = usbbootfs_mkdir,
+    .rmdir     = usbbootfs_rmdir,
+    .write     = usbbootfs_write,
+    .truncate  = usbbootfs_truncate,
+*/
+    .flags     = 0,
+    .drv = {
+        .probe  = usbbootfs_probe,
+        .remove = usbbootfs_remove,
+        .name = "usbbootfs",
+    }
+};
+
+static int usbbootfs_init(void){
+    return register_fs_driver(&usbbootfs_driver);
+}
+coredevice_initcall(usbbootfs_init);
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
