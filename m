Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiHW-0004Rt-W4
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:50:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:50:05 +0100
Message-Id: <1325512207-16501-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512207-16501-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512207-16501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] uart drivers: use xzalloc instead of xmalloc
To: barebox@lists.infradead.org

The flags in struct console_device have to be initialized
to zero. Otherwise the following can happen:

- console_register sets the initial baudrate of a new console
  before we set the global console init state to CONSOLE_INIT_FULL.
- In console_baudrate_set we test whether the current console is
  active which may be true because of unitialized flags.
- we then call getc() to wait for the user to accept the new settings
  and we are stuck because of the CONSOLE_UNINITIALIZED state
  we will never get anything from getc().

Looking back this explains some cases for me when barebox refused
to start and I really wonder why this did not become a more visible
problem before.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/amba-pl011.c         |    2 +-
 drivers/serial/atmel.c              |    2 +-
 drivers/serial/serial_altera.c      |    2 +-
 drivers/serial/serial_altera_jtag.c |    2 +-
 drivers/serial/serial_blackfin.c    |    2 +-
 drivers/serial/serial_imx.c         |    2 +-
 drivers/serial/serial_netx.c        |    2 +-
 drivers/serial/serial_pl010.c       |    2 +-
 drivers/serial/serial_s3c24x0.c     |    2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 148bdbf..56f6f15 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -159,7 +159,7 @@ static int pl011_probe(struct device_d *dev)
 	struct amba_uart_port *uart;
 	struct console_device *cdev;
 
-	uart = xmalloc(sizeof(struct amba_uart_port));
+	uart = xzalloc(sizeof(struct amba_uart_port));
 	uart->clk = clk_get(dev, NULL);
 
 	if (IS_ERR(uart->clk))
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 9ba4ca9..de58465 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -399,7 +399,7 @@ static int atmel_serial_probe(struct device_d *dev)
 	struct atmel_uart_port *uart;
 	struct console_device *cdev;
 
-	uart = xmalloc(sizeof(struct atmel_uart_port));
+	uart = xzalloc(sizeof(struct atmel_uart_port));
 	cdev = &uart->uart;
 	dev->type_data = cdev;
 	cdev->dev = dev;
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index 8fd5d8a..e4d3c40 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -85,7 +85,7 @@ static int altera_serial_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct altera_serial_priv *priv;
 
-	priv = xmalloc(sizeof(*priv));
+	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 3e1b0cf..140ca26 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -90,7 +90,7 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
 	struct console_device *cdev;
 	struct altera_serial_jtag_priv *priv;
 
-	priv = xmalloc(sizeof(*priv));
+	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 9ad5579..d38a06c 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -115,7 +115,7 @@ static int blackfin_serial_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 
-	cdev = xmalloc(sizeof(struct console_device));
+	cdev = xzalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 4923dcb..8547f36 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -320,7 +320,7 @@ static int imx_serial_probe(struct device_d *dev)
 	struct imx_serial_priv *priv;
 	uint32_t val;
 
-	priv = xmalloc(sizeof(*priv));
+	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
 
 	priv->regs = dev_request_mem_region(dev, 0);
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index a3273e9..4f4fb2d 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -140,7 +140,7 @@ static int netx_serial_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 
-	cdev = xmalloc(sizeof(struct console_device));
+	cdev = xzalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index cb87541..e11406d 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -141,7 +141,7 @@ static int pl010_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 
-	cdev = xmalloc(sizeof(struct console_device));
+	cdev = xzalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index abc08e0..1e27d48 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -129,7 +129,7 @@ static int s3c24x0_serial_probe(struct device_d *dev)
 {
 	struct console_device *cdev;
 
-	cdev = xmalloc(sizeof(struct console_device));
+	cdev = xzalloc(sizeof(struct console_device));
 	dev->type_data = cdev;
 	dev->priv = dev_request_mem_region(dev, 0);
 	cdev->dev = dev;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
