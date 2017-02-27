Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciNjv-0001cw-Ma
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 16:01:33 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Mon, 27 Feb 2017 17:01:08 +0100
Message-Id: <20170227160108.5965-1-bst@pengutronix.de>
In-Reply-To: <20170227095548.mze7oca5d6dzkobf@pengutronix.de>
References: <20170227095548.mze7oca5d6dzkobf@pengutronix.de>
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
Subject: [PATCH v2] console: expose consoles in devfs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Stender <bst@pengutronix.de>

This enables displaying text on e.g. a framebuffer console by issueing

	echo -o /dev/fbconsole0 abc123

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 common/console.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/console.h |  3 +++
 2 files changed, 55 insertions(+)

diff --git a/common/console.c b/common/console.c
index 3ff32b8327..bde4c08414 100644
--- a/common/console.c
+++ b/common/console.c
@@ -259,6 +259,39 @@ static int __console_puts(struct console_device *cdev, const char *s)
 	return n;
 }
 
+static int fops_open(struct cdev *cdev, unsigned long flags)
+{
+	struct console_device *priv = cdev->priv;
+
+	return console_open(priv);
+}
+
+static int fops_close(struct cdev *dev)
+{
+	struct console_device *priv = dev->priv;
+
+	return console_close(priv);
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
@@ -311,6 +344,25 @@ int console_register(struct console_device *newcdev)
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
index 85e15cad67..68edc3aaf1 100644
--- a/include/console.h
+++ b/include/console.h
@@ -63,6 +63,9 @@ struct console_device {
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
