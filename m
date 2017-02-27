Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciNfI-000837-2Q
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 15:56:45 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Mon, 27 Feb 2017 16:56:16 +0100
Message-Id: <20170227155616.4004-1-bst@pengutronix.de>
In-Reply-To: <20170227095453.5tznukther5d3o46@pengutronix.de>
References: <20170227095453.5tznukther5d3o46@pengutronix.de>
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
Subject: [PATCH v2] console: replace set_active by open/close
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Stender <bst@pengutronix.de>

Opening and closing consoles should be independent from setting them
active. This way it is possible to open e.g. a framebuffer console and
display text on it without showing stdout/stderr.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 common/console.c          | 31 +++++++++++++++++++++++++++++--
 drivers/video/fbconsole.c | 28 ++++++++++++++++++----------
 include/console.h         |  9 ++++++++-
 net/netconsole.c          | 27 +++++++++++++++++----------
 4 files changed, 72 insertions(+), 23 deletions(-)

diff --git a/common/console.c b/common/console.c
index 74ccfcfc3e..3ff32b8327 100644
--- a/common/console.c
+++ b/common/console.c
@@ -59,6 +59,26 @@ static struct kfifo __console_output_fifo;
 static struct kfifo *console_input_fifo = &__console_input_fifo;
 static struct kfifo *console_output_fifo = &__console_output_fifo;
 
+int console_open(struct console_device *cdev)
+{
+	if (cdev->open && !(cdev-> flags & FLAG_CONSOLE_OPEN)) {
+		cdev->flags |= FLAG_CONSOLE_OPEN;
+		return cdev->open(cdev);
+	}
+
+	return 0;
+}
+
+int console_close(struct console_device *cdev)
+{
+	if (cdev->close && cdev-> flags & FLAG_CONSOLE_OPEN) {
+		cdev->flags &= ~FLAG_CONSOLE_OPEN;
+		return cdev->close(cdev);
+	}
+
+	return 0;
+}
+
 int console_set_active(struct console_device *cdev, unsigned flag)
 {
 	int ret, i;
@@ -71,8 +91,15 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 	if (!flag && cdev->f_active && cdev->flush)
 		cdev->flush(cdev);
 
-	if (cdev->set_active) {
-		ret = cdev->set_active(cdev, flag);
+	if (flag == cdev->f_active)
+		return 0;
+
+	if (!flag) {
+		ret = console_close(cdev);
+		if (ret)
+			return ret;
+	} else {
+		ret = console_open(cdev);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 693c21f547..64f7d7364e 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -365,21 +365,13 @@ static int setup_font(struct fbc_priv *priv)
 	return 0;
 }
 
-static int fbc_set_active(struct console_device *cdev, unsigned flags)
+static int fbc_open(struct console_device *cdev)
 {
 	struct fbc_priv *priv = container_of(cdev,
 					struct fbc_priv, cdev);
 	struct fb_info *fb = priv->fb;
 	int ret;
 
-	if (priv->active) {
-		fb_close(priv->sc);
-		priv->active = false;
-	}
-
-	if (!(flags & (CONSOLE_STDOUT | CONSOLE_STDERR)))
-		return 0;
-
 	ret = setup_font(priv);
 	if (ret)
 		return ret;
@@ -400,6 +392,21 @@ static int fbc_set_active(struct console_device *cdev, unsigned flags)
 	return 0;
 }
 
+static int fbc_close(struct console_device *cdev)
+{
+	struct fbc_priv *priv = container_of(cdev,
+					struct fbc_priv, cdev);
+
+	if (priv->active) {
+		fb_close(priv->sc);
+		priv->active = false;
+
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static int set_font(struct param_d *p, void *vpriv)
 {
 	struct fbc_priv *priv = vpriv;
@@ -434,7 +441,8 @@ int register_fbconsole(struct fb_info *fb)
 	cdev->getc = fbc_getc;
 	cdev->devname = "fbconsole";
 	cdev->devid = DEVICE_ID_DYNAMIC;
-	cdev->set_active = fbc_set_active;
+	cdev->open = fbc_open;
+	cdev->close = fbc_close;
 
 	ret = console_register(cdev);
 	if (ret) {
diff --git a/include/console.h b/include/console.h
index 4b2f134a4c..85e15cad67 100644
--- a/include/console.h
+++ b/include/console.h
@@ -28,6 +28,8 @@
 #define CONSOLE_STDOUT          (1 << 1)
 #define CONSOLE_STDERR          (1 << 2)
 
+#define FLAG_CONSOLE_OPEN       (1 << 0)
+
 enum console_mode {
 	CONSOLE_MODE_NORMAL,
 	CONSOLE_MODE_RS485,
@@ -44,7 +46,8 @@ struct console_device {
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
-	int (*set_active)(struct console_device *cdev, unsigned active);
+	int (*open)(struct console_device *cdev);
+	int (*close)(struct console_device *cdev);
 
 	char *devname;
 	int devid;
@@ -54,6 +57,8 @@ struct console_device {
 	unsigned char f_active;
 	char active[4];
 
+	unsigned flags;
+
 	unsigned int baudrate;
 	unsigned int baudrate_param;
 
@@ -75,6 +80,8 @@ extern int barebox_loglevel;
 
 struct console_device *console_get_first_active(void);
 
+int console_open(struct console_device *cdev);
+int console_close(struct console_device *cdev);
 int console_set_active(struct console_device *cdev, unsigned active);
 unsigned console_get_active(struct console_device *cdev);
 int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
diff --git a/net/netconsole.c b/net/netconsole.c
index ce3c418798..ef8b1856b6 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -105,19 +105,11 @@ static void nc_putc(struct console_device *cdev, char c)
 	priv->busy = 0;
 }
 
-static int nc_set_active(struct console_device *cdev, unsigned flags)
+static int nc_open(struct console_device *cdev)
 {
 	struct nc_priv *priv = container_of(cdev,
 					struct nc_priv, cdev);
 
-	if (priv->con) {
-		net_unregister(priv->con);
-		priv->con = NULL;
-	}
-
-	if (!flags)
-		return 0;
-
 	if (!priv->port) {
 		pr_err("port not set\n");
 		return -EINVAL;
@@ -142,6 +134,20 @@ static int nc_set_active(struct console_device *cdev, unsigned flags)
 	return 0;
 }
 
+static int nc_close(struct console_device *cdev)
+{
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+
+	if (priv->con) {
+		net_unregister(priv->con);
+		priv->con = NULL;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
 static int netconsole_init(void)
 {
 	struct nc_priv *priv;
@@ -155,7 +161,8 @@ static int netconsole_init(void)
 	cdev->getc = nc_getc;
 	cdev->devname = "netconsole";
 	cdev->devid = DEVICE_ID_SINGLE;
-	cdev->set_active = nc_set_active;
+	cdev->open = nc_open;
+	cdev->close = nc_close;
 
 	g_priv = priv;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
