Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rg-FW
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:05 +0200
Message-Id: <1433830875-31119-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] console: Add functions to get/set baudrate
To: Barebox List <barebox@lists.infradead.org>

So C code can call a function rather than fiddling with device parameters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 34 ++++++++++++++++++++++++++++++----
 include/console.h |  2 ++
 2 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/common/console.c b/common/console.c
index 53030b5..957f539 100644
--- a/common/console.c
+++ b/common/console.c
@@ -138,29 +138,55 @@ static const char *console_active_get(struct device_d *dev,
 	return cdev->active;
 }
 
-static int console_baudrate_set(struct param_d *param, void *priv)
+int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
 {
-	struct console_device *cdev = priv;
+	int ret;
 	unsigned char c;
 
+	if (!cdev->setbrg)
+		return -ENOSYS;
+
+	if (cdev->baudrate == baudrate)
+		return 0;
+
 	/*
 	 * If the device is already active, change its baudrate.
 	 * The baudrate of an inactive device will be set at activation time.
 	 */
 	if (cdev->f_active) {
 		printf("## Switch baudrate to %d bps and press ENTER ...\n",
-			cdev->baudrate);
+			baudrate);
 		mdelay(50);
-		cdev->setbrg(cdev, cdev->baudrate);
+	}
+
+	ret = cdev->setbrg(cdev, baudrate);
+	if (ret)
+		return ret;
+
+	if (cdev->f_active) {
 		mdelay(50);
 		do {
 			c = getc();
 		} while (c != '\r' && c != '\n');
 	}
 
+	cdev->baudrate = baudrate;
+
 	return 0;
 }
 
+unsigned console_get_baudrate(struct console_device *cdev)
+{
+	return cdev->baudrate;
+}
+
+static int console_baudrate_set(struct param_d *param, void *priv)
+{
+	struct console_device *cdev = priv;
+
+	return console_set_baudrate(cdev, cdev->baudrate);
+}
+
 static void console_init_early(void)
 {
 	kfifo_init(console_input_fifo, console_input_buffer,
diff --git a/include/console.h b/include/console.h
index f7055e6..945bdcb 100644
--- a/include/console.h
+++ b/include/console.h
@@ -78,5 +78,7 @@ struct console_device *console_get_first_active(void);
 
 int console_set_active(struct console_device *cdev, unsigned active);
 unsigned console_get_active(struct console_device *cdev);
+int console_set_baudrate(struct console_device *cdev, unsigned baudrate);
+unsigned console_get_baudrate(struct console_device *cdev);
 
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
