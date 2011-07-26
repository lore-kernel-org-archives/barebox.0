Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f170.google.com ([209.85.215.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlnvC-0003GE-Js
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 20:08:07 +0000
Received: by mail-ey0-f170.google.com with SMTP id 10so1591113eyd.29
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 13:08:06 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Tue, 26 Jul 2011 22:07:57 +0200
Message-Id: <1311710877-13004-5-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
References: <1311710877-13004-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 4/4] nios2/altera_serial_jtag: Switch to resources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/serial/serial_altera_jtag.c |   27 +++++++++++++++++++++++----
 1 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 322f9e9..2e34c89 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -30,6 +30,12 @@
 #include <asm/io.h>
 #include <asm/nios2-io.h>
 
+struct altera_serial_jtag_priv {
+	struct console_device cdev;
+	void __iomem *regs;
+};
+
+
 static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	return 0;
@@ -37,7 +43,10 @@ static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudr
 
 static void altera_serial_jtag_putc(struct console_device *cdev, char c)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct altera_serial_jtag_priv *priv = container_of(cdev,
+		struct altera_serial_jtag_priv, cdev);
+
+	struct nios_jtag *jtag = priv->regs;
 	uint32_t st;
 
 	while (1) {
@@ -51,14 +60,20 @@ static void altera_serial_jtag_putc(struct console_device *cdev, char c)
 
 static int altera_serial_jtag_tstc(struct console_device *cdev)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct altera_serial_jtag_priv *priv = container_of(cdev,
+		struct altera_serial_jtag_priv, cdev);
+
+	struct nios_jtag *jtag = priv->regs;
 
 	return readl(&jtag->control) & NIOS_JTAG_RRDY;
 }
 
 static int altera_serial_jtag_getc(struct console_device *cdev)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct altera_serial_jtag_priv *priv = container_of(cdev,
+		struct altera_serial_jtag_priv, cdev);
+
+	struct nios_jtag *jtag = priv->regs;
 	uint32_t val;
 
 	while (1) {
@@ -73,8 +88,12 @@ static int altera_serial_jtag_getc(struct console_device *cdev)
 static int altera_serial_jtag_probe(struct device_d *dev) {
 
 	struct console_device *cdev;
+	struct altera_serial_jtag_priv *priv;
+
+	priv = xmalloc(sizeof(*priv));
+	cdev = &priv->cdev;
 
-	cdev = malloc(sizeof(struct console_device));
+	priv->regs = dev_request_mem_region(dev, 0);
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
-- 
1.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
