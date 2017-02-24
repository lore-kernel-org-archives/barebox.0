Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chGon-0005Rh-Qm
 for barebox@lists.infradead.org; Fri, 24 Feb 2017 14:25:59 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 24 Feb 2017 15:24:59 +0100
Message-Id: <20170224142501.2679-3-bst@pengutronix.de>
In-Reply-To: <20170224142501.2679-1-bst@pengutronix.de>
References: <20170224142501.2679-1-bst@pengutronix.de>
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
Subject: [PATCH 2/4] console: expose consoles in devfs
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

This enables displaying text on e.g. a framebuffer console by issueing

	echo -o /dev/fbconsole0 abc123

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 common/console.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/console.h |  3 +++
 2 files changed, 55 insertions(+)

diff --git a/common/console.c b/common/console.c
index 43890b3da8..dcd67afe20 100644
--- a/common/console.c
+++ b/common/console.c
@@ -243,6 +243,39 @@ static int __console_puts(struct console_device *cdev, const char *s)
 	return n;
 }
 
+static int fops_open(struct cdev *cdev, unsigned long flags)
+{
+	struct console_device *priv = cdev->priv;
+
+	return priv->open(priv);
+}
+
+static int fops_close(struct cdev *dev)
+{
+	struct console_device *priv = dev->priv;
+
+	return priv->close(priv);
+}
+
+static int fops_flush(struct cdev *dev)
+{
+	struct console_device *priv = dev->priv;
+
+	priv->flush(priv);
+
+	return 0;
+}
+
+static int fops_write(struct cdev* dev, const void* buf, size_t count,
+		      loff_t offset, ulong flags)
+{
+	struct console_device *priv = dev->priv;
+
+	priv->puts(priv, buf);
+
+	return 0;
+}
+
 int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
@@ -295,6 +328,25 @@ int console_register(struct console_device *newcdev)
 		console_set_active(newcdev, CONSOLE_STDIN |
 				CONSOLE_STDOUT | CONSOLE_STDERR);
 
+	/* expose console as device in fs */
+	newcdev->devfs.name = basprintf("%s%d", newcdev->class_dev.name,
+					newcdev->class_dev.id);
+	newcdev->devfs.priv = newcdev;
+	newcdev->devfs.dev = dev;
+	newcdev->devfs.ops = &newcdev->fops;
+	newcdev->devfs.flags = DEVFS_IS_CHARACTER_DEV;
+	newcdev->fops.open = fops_open;
+	newcdev->fops.close = fops_close;
+	newcdev->fops.flush = fops_flush;
+	newcdev->fops.write = fops_write;
+
+	ret = devfs_create(&newcdev->devfs);
+
+	if (ret) {
+		pr_err("device creation failed with %s\n", strerror(-ret));
+		return ret;
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL(console_register);
diff --git a/include/console.h b/include/console.h
index 53f6e47fcc..d9fa05c2ce 100644
--- a/include/console.h
+++ b/include/console.h
@@ -59,6 +59,9 @@ struct console_device {
 	unsigned int baudrate_param;
 
 	const char *linux_console_name;
+
+	struct cdev devfs;
+	struct file_operations fops;
 };
 
 int console_register(struct console_device *cdev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
